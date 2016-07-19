.class final Lcom/google/ipc/invalidation/ticl/p;
.super Lcom/google/ipc/invalidation/ticl/w;
.source "InvalidationClientCore.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/m;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;)V
    .locals 6

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 138
    const-string/jumbo v2, "AcquireToken"

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->a()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;IIZ)V

    .line 139
    return-void
.end method

.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 6

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 142
    const-string/jumbo v2, "AcquireToken"

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->a()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;ILcom/google/ipc/invalidation/ticl/a/aw;B)V

    .line 143
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->e(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/m;->f(Lcom/google/ipc/invalidation/ticl/m;)Ljava/util/Random;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Random;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/b/c;)V

    .line 151
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->j(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/H;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/m;->g(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/M;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/m;->h(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/p;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/m;->i(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/q;

    move-result-object v3

    const-string/jumbo v4, "AcquireToken"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/H;->a(Lcom/google/ipc/invalidation/ticl/a/M;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/q;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
