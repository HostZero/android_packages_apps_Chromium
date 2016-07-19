.class final Lcom/google/ipc/invalidation/ticl/N;
.super Lcom/google/ipc/invalidation/b/m;
.source "RecurringTask.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/M;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/M;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/M;->a(Lcom/google/ipc/invalidation/ticl/M;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v2

    const-string/jumbo v3, "Not on scheduler thread"

    invoke-static {v2, v3}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 157
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-static {v2, v0}, Lcom/google/ipc/invalidation/ticl/M;->a(Lcom/google/ipc/invalidation/ticl/M;Z)Z

    .line 158
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/M;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/M;->b(Lcom/google/ipc/invalidation/ticl/M;)Lcom/google/ipc/invalidation/ticl/ai;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/M;->c(Lcom/google/ipc/invalidation/ticl/M;)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    const-string/jumbo v2, "Spinning: No exp back off and initialdelay is zero"

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    const-string/jumbo v2, "Retry"

    invoke-static {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/M;->a(Lcom/google/ipc/invalidation/ticl/M;ZLjava/lang/String;)V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/M;->b(Lcom/google/ipc/invalidation/ticl/M;)Lcom/google/ipc/invalidation/ticl/ai;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/N;->a:Lcom/google/ipc/invalidation/ticl/M;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/M;->b(Lcom/google/ipc/invalidation/ticl/M;)Lcom/google/ipc/invalidation/ticl/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/ai;->b()V

    goto :goto_0
.end method
