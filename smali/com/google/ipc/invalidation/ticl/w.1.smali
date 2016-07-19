.class abstract Lcom/google/ipc/invalidation/ticl/w;
.super Lcom/google/ipc/invalidation/ticl/M;
.source "InvalidationClientCore.java"


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;IIZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->c(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/q;

    move-result-object v4

    if-eqz p5, :cond_0

    invoke-static {p1, p4, v5}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;ILcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/ai;

    move-result-object v5

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/M;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;II)V

    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;ILcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 7

    .prologue
    .line 128
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->c(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/q;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/aw;->e()Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;ILcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/ai;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/M;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;ILcom/google/ipc/invalidation/ticl/a/aw;B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;ILcom/google/ipc/invalidation/ticl/a/aw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 7

    .prologue
    .line 118
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->c(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/q;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/M;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/aw;B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    return-void
.end method
