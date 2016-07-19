.class public final Lcom/google/ipc/invalidation/ticl/a/ay;
.super Lcom/google/ipc/invalidation/b/n;
.source "JavaClient.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/ay;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 573
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ay;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/ay;->a:Lcom/google/ipc/invalidation/ticl/a/ay;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 578
    const-string/jumbo v0, "counter"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ay;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    .line 579
    return-void
.end method

.method static a(Lcom/google/a/a/a/I;)Lcom/google/ipc/invalidation/ticl/a/ay;
    .locals 3

    .prologue
    .line 613
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 618
    :goto_0
    return-object v0

    .line 614
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/I;->a:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 615
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/I;->a:[Lcom/google/a/a/a/a/t;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 616
    iget-object v2, p0, Lcom/google/a/a/a/I;->a:[Lcom/google/a/a/a/a/t;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ab;->a(Lcom/google/a/a/a/a/t;)Lcom/google/ipc/invalidation/ticl/a/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 618
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ay;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ay;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/ay;
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ay;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/ay;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 597
    const-string/jumbo v0, "<StatisticsState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 598
    const-string/jumbo v0, " counter=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 599
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 600
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 593
    return v0
.end method

.method final c()Lcom/google/a/a/a/I;
    .locals 4

    .prologue
    .line 626
    new-instance v2, Lcom/google/a/a/a/I;

    invoke-direct {v2}, Lcom/google/a/a/a/I;-><init>()V

    .line 627
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/t;

    iput-object v0, v2, Lcom/google/a/a/a/I;->a:[Lcom/google/a/a/a/a/t;

    .line 628
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/a/a/a/I;->a:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 629
    iget-object v3, v2, Lcom/google/a/a/a/I;->a:[Lcom/google/a/a/a/a/t;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->d()Lcom/google/a/a/a/a/t;

    move-result-object v0

    aput-object v0, v3, v1

    .line 628
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 631
    :cond_0
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 584
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    .line 585
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/ay;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 586
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ay;

    .line 587
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/ay;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ay;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
