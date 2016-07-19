.class Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;
.super Ljava/lang/Object;
.source "AndroidListenerIntents.java"


# static fields
.field static final EXTRA_ACK:Ljava/lang/String; = "com.google.ipc.invalidation.android_listener.ACK"

.field static final EXTRA_REGISTRATION:Ljava/lang/String; = "com.google.ipc.invalidation.android_listener.REGISTRATION"

.field static final EXTRA_SCHEDULED_TASK:Ljava/lang/String; = "com.google.ipc.invalidation.android_listener.SCHEDULED_TASK"

.field static final EXTRA_START:Ljava/lang/String; = "com.google.ipc.invalidation.android_listener.START"

.field static final EXTRA_STOP:Ljava/lang/String; = "com.google.ipc.invalidation.android_listener.STOP"

.field private static final logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forPrefix(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method static createAckIntent(Landroid/content/Context;[B)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    const-string/jumbo v1, "com.google.ipc.invalidation.android_listener.ACK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 185
    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->setAndroidListenerClass(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static createRegistrationIntent(Landroid/content/Context;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Iterable;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    invoke-static {p1, p2, p3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newRegistrationCommand(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Iterable;Z)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v1

    .line 195
    const-string/jumbo v2, "com.google.ipc.invalidation.android_listener.REGISTRATION"

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->i()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 196
    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->setAndroidListenerClass(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static createScheduledTaskintent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.ipc.invalidation.android_listener.SCHEDULED_TASK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$AlarmReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static createStartIntent(Landroid/content/Context;ILcom/google/ipc/invalidation/b/c;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    invoke-static {p1, p2, p3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newStartCommand(ILcom/google/ipc/invalidation/b/c;Z)Lcom/google/ipc/invalidation/ticl/a/g;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "com.google.ipc.invalidation.android_listener.START"

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/g;->g()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 169
    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->setAndroidListenerClass(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static createStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    const-string/jumbo v1, "com.google.ipc.invalidation.android_listener.STOP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->setAndroidListenerClass(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static findAckHandle(Landroid/content/Intent;)[B
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "com.google.ipc.invalidation.android_listener.ACK"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static findRegistrationCommand(Landroid/content/Intent;)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    const-string/jumbo v1, "com.google.ipc.invalidation.android_listener.REGISTRATION"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 97
    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->a([B)Lcom/google/ipc/invalidation/ticl/a/f;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    sget-object v2, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Received invalid proto: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static findStartCommand(Landroid/content/Intent;)Lcom/google/ipc/invalidation/ticl/a/g;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string/jumbo v1, "com.google.ipc.invalidation.android_listener.START"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 117
    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/g;->a([B)Lcom/google/ipc/invalidation/ticl/a/g;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    sget-object v2, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Received invalid proto: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static isAuthTokenRequest(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_REQUEST"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isScheduledTaskIntent(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "com.google.ipc.invalidation.android_listener.SCHEDULED_TASK"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isStopIntent(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "com.google.ipc.invalidation.android_listener.STOP"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static issueAndroidListenerIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->setAndroidListenerClass(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method static issueAuthTokenResponse(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.ipc.invalidation.AUTH_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.google.ipc.invalidation.AUTH_TOKEN_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    sget-object v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Canceled auth request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static issueScheduledTaskIntent(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-static {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->createScheduledTaskintent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    const/high16 v1, 0x8000000

    invoke-static {p0, v4, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 153
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 155
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerIntents;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Unable to schedule task: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static issueTiclIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method static setAndroidListenerClass(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
