.class public final Lcom/google/ipc/invalidation/ticl/android2/channel/d;
.super Ljava/lang/Object;
.source "AndroidNetworkChannel.java"

# interfaces
.implements Lcom/google/ipc/invalidation/ticl/ah;


# static fields
.field private static final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/google/ipc/invalidation/ticl/android2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "AndroidNetworkChannel"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->b:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public final sendMessage([B)V
    .locals 3

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/android2/i;->a([B)Landroid/content/Intent;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 52
    new-instance v1, Lcom/google/ipc/invalidation/ticl/android2/g;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/g;->d()Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "GcmUpstreamSenderService class not found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->b:Landroid/content/Context;

    const-class v2, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final setListener(Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->c:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/android2/j;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;)V

    .line 67
    return-void
.end method

.method public final setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/j;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/d;->c:Lcom/google/ipc/invalidation/ticl/android2/j;

    .line 72
    return-void
.end method
