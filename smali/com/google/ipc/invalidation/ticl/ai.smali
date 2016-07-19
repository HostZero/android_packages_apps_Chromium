.class public final Lcom/google/ipc/invalidation/ticl/ai;
.super Lcom/google/ipc/invalidation/b/g;
.source "TiclExponentialBackoffDelayGenerator.java"


# direct methods
.method public constructor <init>(Ljava/util/Random;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ipc/invalidation/b/g;-><init>(Ljava/util/Random;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IILcom/google/ipc/invalidation/ticl/a/H;)V
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/H;->a()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/H;->c()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/b/g;-><init>(Ljava/util/Random;IIIZ)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/H;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/ai;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/ai;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/H;->a(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v0

    return-object v0
.end method
