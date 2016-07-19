.class public Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;
.super Ljava/lang/Object;
.source "GoogleCloudMessagingV2.java"

# interfaces
.implements Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;


# instance fields
.field private mAppPendingIntent:Landroid/app/PendingIntent;

.field private final mAppPendingIntentLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mAppPendingIntent:Landroid/app/PendingIntent;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mAppPendingIntentLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private getExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    return-object v0

    .line 177
    :cond_1
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    .line 179
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerRpc(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 135
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 138
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Google Play Services missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    if-nez p1, :cond_2

    .line 141
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 144
    :cond_2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 145
    new-instance v1, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;-><init>(Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;Landroid/os/Looper;Ljava/util/concurrent/BlockingQueue;)V

    .line 152
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-direct {p0, v1}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->setPackageNameExtra(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v3, "google.messenger"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    iget-object v2, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    const-wide/16 v2, 0x1388

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setPackageNameExtra(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 186
    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mAppPendingIntentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mAppPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    const-string/jumbo v2, "com.google.example.invalidpackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mAppPendingIntent:Landroid/app/PendingIntent;

    .line 194
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const-string/jumbo v0, "app"

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->mAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 101
    :cond_0
    const-string/jumbo v0, "sender"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "subscription"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "subtype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    const-string/jumbo v0, "subtype"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-direct {p0, p2}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->registerRpc(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "registration_id"

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->getExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    if-nez p3, :cond_0

    .line 57
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 59
    :cond_0
    const-string/jumbo v0, "subtype"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p3}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->subscribe(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 129
    :cond_0
    const-string/jumbo v0, "delete"

    const-string/jumbo v1, "1"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->subscribe(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    if-nez p3, :cond_0

    .line 68
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 70
    :cond_0
    const-string/jumbo v0, "subtype"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1, p3}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;->unsubscribe(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
