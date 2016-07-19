.class public Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;
.super Lcom/google/android/gms/gcm/GcmTaskService;
.source "GcmRegistrationTaskService.java"


# static fields
.field private static final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "RegistrationTaskService"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    const-string/jumbo v3, "gcm_registration_task_service"

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "Unknown task received with tag: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_0
    return v0

    .line 67
    :cond_0
    const-string/jumbo v4, "548642380543"

    .line 1049
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/iid/a;->b(Landroid/content/Context;)Lcom/google/android/gms/iid/a;

    move-result-object v3

    .line 69
    const-string/jumbo v5, "GCM"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/iid/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-static {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->b(Landroid/content/Context;I)V

    .line 1098
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1100
    const-string/jumbo v5, "com.google.ipc.invalidation.channel.sender.gcm_regid_change"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->d(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 1104
    new-instance v5, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v5, p0}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/android2/g;->d()Ljava/lang/String;

    move-result-object v5

    .line 1105
    if-nez v5, :cond_1

    .line 1106
    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v5, "GcmUpstreamSenderService class not found."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 72
    goto :goto_0

    .line 1109
    :cond_1
    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1117
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/android2/a;->b()Landroid/content/Intent;

    move-result-object v3

    .line 1118
    new-instance v5, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v5, p0}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/android2/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    invoke-virtual {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 73
    :catch_0
    move-exception v3

    .line 74
    sget-object v5, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v6, "Failed to get token for sender: %s. Exception : %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object v3, v0, v2

    invoke-interface {v5, v6, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 75
    goto :goto_0

    .line 1111
    :cond_2
    :try_start_1
    const-class v5, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 76
    :catch_1
    move-exception v0

    .line 79
    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "Security exception when fetching token: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 80
    goto/16 :goto_0
.end method
