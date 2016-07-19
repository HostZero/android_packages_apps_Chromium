.class public final Lcom/google/ipc/invalidation/ticl/a/t;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 561
    const-string/jumbo v0, "is_online"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/t;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    .line 563
    return-void
.end method

.method static a(Lcom/google/a/a/a/t;)Lcom/google/ipc/invalidation/ticl/a/t;
    .locals 2

    .prologue
    .line 597
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/t;

    iget-object v1, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/t;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 581
    const-string/jumbo v0, "<NetworkStatus:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 582
    const-string/jumbo v0, " is_online="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 583
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 584
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/t;->a(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 577
    return v0
.end method

.method final c()Lcom/google/a/a/a/t;
    .locals 2

    .prologue
    .line 606
    new-instance v0, Lcom/google/a/a/a/t;

    invoke-direct {v0}, Lcom/google/a/a/a/t;-><init>()V

    .line 607
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    .line 608
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    if-ne p0, p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/t;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 570
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/t;

    .line 571
    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/t;->a:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
