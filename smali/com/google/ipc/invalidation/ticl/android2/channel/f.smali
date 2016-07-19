.class public abstract Lcom/google/ipc/invalidation/ticl/android2/channel/f;
.super Landroid/app/IntentService;
.source "GcmUpstreamSenderService.java"


# static fields
.field private static final logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "GcmMsgSenderSvc"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "GcmUpstreamService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->setIntentRedelivery(Z)V

    .line 61
    return-void
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Encoding message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNetworkEndpointId(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/a/D;
    .locals 5

    .prologue
    .line 150
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "No GCM registration token; cannot determine our network endpoint id: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "ANDROID_GCM_UPDATED"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/channel/a;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v0, v1, v2, v3}, Landroid/support/customtabs/a;->newAndroidEndpointId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/ar;)Lcom/google/ipc/invalidation/ticl/a/D;

    move-result-object v0

    goto :goto_0
.end method

.method private handleGcmRegIdChange()V
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->b(Landroid/content/Context;)[B

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->sendUpstreamMessage([B)V

    .line 111
    :cond_0
    return-void
.end method

.method private handleOutboundMessage([B)V
    .locals 5

    .prologue
    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/a/h;->a([B)Lcom/google/ipc/invalidation/ticl/a/h;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/h;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->sendUpstreamMessage([B)V

    .line 100
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Invalid AndroidNetworkSendRequest from %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendUpstreamMessage([B)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->getNetworkEndpointId(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/a/D;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Buffering message to the data center: no GCM registration id"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-static {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;[B)V

    .line 139
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string/jumbo v2, "network_endpoint_id"

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/D;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "client_to_server_message"

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->base64Encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Encoded message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->base64Encode([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const-string/jumbo v0, "548642380543@google.com"

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->deliverMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract deliverMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 66
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Incorrect channel type for using GCM Upstream"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v0, "ipcinv-outbound-message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string/jumbo v0, "ipcinv-outbound-message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->handleOutboundMessage([B)V

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v0, "com.google.ipc.invalidation.channel.sender.gcm_regid_change"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->handleGcmRegIdChange()V

    goto :goto_0

    .line 79
    :cond_3
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/f;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Ignoring intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
