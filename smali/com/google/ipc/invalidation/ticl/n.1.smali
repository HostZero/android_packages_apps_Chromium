.class final Lcom/google/ipc/invalidation/ticl/n;
.super Ljava/lang/Object;
.source "InvalidationClientCore.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/m;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/n;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAddressChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/n;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/n;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0, v2, v2}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;ZZ)V

    .line 551
    return-void
.end method

.method public final onMessageReceived([B)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/n;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a([B)V

    .line 541
    return-void
.end method

.method public final onOnlineStatusChange(Z)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/n;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Z)V

    .line 545
    return-void
.end method
