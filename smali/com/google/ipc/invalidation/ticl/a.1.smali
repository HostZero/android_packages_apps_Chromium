.class final Lcom/google/ipc/invalidation/ticl/a;
.super Ljava/lang/Object;
.source "AckCache.java"


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/google/ipc/invalidation/ticl/a/aa;)J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a;->a:Ljava/util/Map;

    .line 1041
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Long;

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/google/ipc/invalidation/ticl/a/Y;)V
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->d()J

    move-result-wide v2

    .line 71
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/a;->a(Lcom/google/ipc/invalidation/ticl/a/aa;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final b(Lcom/google/ipc/invalidation/ticl/a/Y;)Z
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/a;->a(Lcom/google/ipc/invalidation/ticl/a/aa;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
