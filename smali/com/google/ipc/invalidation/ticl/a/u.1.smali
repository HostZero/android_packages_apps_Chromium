.class public final Lcom/google/ipc/invalidation/ticl/a/u;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/b/c;)V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 503
    const-string/jumbo v0, "data"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/u;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    .line 505
    return-void
.end method

.method static a(Lcom/google/a/a/a/u;)Lcom/google/ipc/invalidation/ticl/a/u;
    .locals 2

    .prologue
    .line 539
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/u;

    iget-object v1, p0, Lcom/google/a/a/a/u;->a:[B

    invoke-static {v1}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/u;-><init>(Lcom/google/ipc/invalidation/b/c;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/u;
    .locals 1

    .prologue
    .line 497
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/u;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/u;-><init>(Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 523
    const-string/jumbo v0, "<ServerMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 524
    const-string/jumbo v0, " data="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 525
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 526
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 519
    return v0
.end method

.method final c()Lcom/google/a/a/a/u;
    .locals 2

    .prologue
    .line 548
    new-instance v0, Lcom/google/a/a/a/u;

    invoke-direct {v0}, Lcom/google/a/a/a/u;-><init>()V

    .line 549
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/u;->a:[B

    .line 550
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 510
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 513
    :goto_0
    return v0

    .line 511
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/u;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/u;

    .line 513
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/u;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
