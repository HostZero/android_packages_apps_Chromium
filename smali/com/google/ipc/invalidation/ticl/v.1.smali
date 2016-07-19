.class final Lcom/google/ipc/invalidation/ticl/v;
.super Lcom/google/ipc/invalidation/ticl/w;
.source "InvalidationClientCore.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/m;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;)V
    .locals 6

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 167
    const-string/jumbo v2, "RegSyncHeartbeat"

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->a()I

    move-result v3

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->a()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;IIZ)V

    .line 168
    return-void
.end method

.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 6

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 171
    const-string/jumbo v2, "RegSyncHeartbeat"

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->a()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;ILcom/google/ipc/invalidation/ticl/a/aw;B)V

    .line 172
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/m;->k(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/O;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/O;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Registration state not in sync with server: %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/m;->k(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/O;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v2, v1, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;ZZ)V

    .line 183
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/v;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v2, "Not sending message since state is now in sync"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 183
    goto :goto_0
.end method
