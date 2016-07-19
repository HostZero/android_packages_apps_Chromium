.class public final Lcom/google/ipc/invalidation/ticl/android2/channel/c;
.super Ljava/lang/Object;
.source "AndroidGcmController.java"


# static fields
.field private static final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/ipc/invalidation/ticl/android2/channel/c;


# instance fields
.field private d:Lcom/google/android/gms/gcm/GcmNetworkManager;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "AndroidGcmController"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->d:Lcom/google/android/gms/gcm/GcmNetworkManager;

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/c;
    .locals 3

    .prologue
    .line 65
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->c:Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->c:Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->c:Lcom/google/ipc/invalidation/ticl/android2/channel/c;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "548642380543"

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x738638

    if-ge v0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Google Play Services unavailable. Initialization failed."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    const-string/jumbo v1, "gcm_registration_task_service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    const-class v1, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->d:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 158
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Failed to schedule GCM registration task. Exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 181
    :try_start_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/android2/g;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/a;->a([B)Lcom/google/ipc/invalidation/ticl/a/a;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/a;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(Lcom/google/ipc/invalidation/b/c;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    const-string/jumbo v0, "echo-token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Failed parsing inbound message: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_1
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "GCM Intent has no message content: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_3

    .line 114
    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Initializing Gcm. Use Gcm Upstream Sender Service"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;I)V

    .line 1098
    :goto_0
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->e(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ge v3, v2, :cond_1

    :cond_0
    move v0, v1

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a()V

    .line 123
    :cond_2
    return-void

    .line 117
    :cond_3
    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Initializing Gcm updated."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/c;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
