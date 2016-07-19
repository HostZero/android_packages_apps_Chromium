.class final Lcom/google/ipc/invalidation/ticl/u;
.super Ljava/lang/Object;
.source "InvalidationClientCore.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/types/Callback;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/a/J;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/t;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/t;Lcom/google/ipc/invalidation/ticl/a/J;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/u;->b:Lcom/google/ipc/invalidation/ticl/t;

    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/u;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 242
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/Status;

    .line 1245
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/u;->b:Lcom/google/ipc/invalidation/ticl/t;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Write state completed: %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/u;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/u;->b:Lcom/google/ipc/invalidation/ticl/t;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->n(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 1247
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/u;->b:Lcom/google/ipc/invalidation/ticl/t;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/t;->a(Lcom/google/ipc/invalidation/ticl/t;)Lcom/google/ipc/invalidation/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/u;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/u;->b:Lcom/google/ipc/invalidation/ticl/t;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->f:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    goto :goto_0
.end method
