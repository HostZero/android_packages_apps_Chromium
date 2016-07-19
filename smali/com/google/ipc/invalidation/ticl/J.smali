.class final Lcom/google/ipc/invalidation/ticl/J;
.super Ljava/lang/Object;
.source "ProtocolHandler.java"


# instance fields
.field final a:Lcom/google/ipc/invalidation/ticl/L;

.field final b:Lcom/google/ipc/invalidation/ticl/a/aq;

.field final c:Lcom/google/ipc/invalidation/ticl/a/X;

.field final d:Lcom/google/ipc/invalidation/ticl/a/ai;

.field final e:Lcom/google/ipc/invalidation/ticl/a/am;

.field final f:Lcom/google/ipc/invalidation/ticl/a/V;

.field final g:Lcom/google/ipc/invalidation/ticl/a/T;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ao;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->a()Lcom/google/ipc/invalidation/ticl/a/an;

    move-result-object v0

    .line 348
    new-instance v2, Lcom/google/ipc/invalidation/ticl/L;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/an;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/an;->d()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/ipc/invalidation/ticl/L;-><init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;)V

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    .line 350
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->c()Lcom/google/ipc/invalidation/ticl/a/aq;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/J;->b:Lcom/google/ipc/invalidation/ticl/a/aq;

    .line 352
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->e()Lcom/google/ipc/invalidation/ticl/a/X;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/J;->c:Lcom/google/ipc/invalidation/ticl/a/X;

    .line 353
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->f()Lcom/google/ipc/invalidation/ticl/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/J;->d:Lcom/google/ipc/invalidation/ticl/a/ai;

    .line 354
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->g()Lcom/google/ipc/invalidation/ticl/a/am;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/J;->e:Lcom/google/ipc/invalidation/ticl/a/am;

    .line 356
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->i()Lcom/google/ipc/invalidation/ticl/a/S;

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->k()Lcom/google/ipc/invalidation/ticl/a/V;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/J;->f:Lcom/google/ipc/invalidation/ticl/a/V;

    .line 359
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->l()Lcom/google/ipc/invalidation/ticl/a/T;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/J;->g:Lcom/google/ipc/invalidation/ticl/a/T;

    .line 360
    return-void

    :cond_2
    move-object v0, v1

    .line 350
    goto :goto_0
.end method
