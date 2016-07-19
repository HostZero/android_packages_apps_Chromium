.class public final Lcom/google/ipc/invalidation/ticl/a/ag;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 682
    const-string/jumbo v0, "object_id"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 684
    const-string/jumbo v0, "op_type"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    .line 686
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/y;)Lcom/google/ipc/invalidation/ticl/a/ag;
    .locals 3

    .prologue
    .line 725
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ag;

    iget-object v1, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ag;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/aa;I)Lcom/google/ipc/invalidation/ticl/a/ag;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/a/ag;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 708
    const-string/jumbo v0, "<RegistrationP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 709
    const-string/jumbo v0, " object_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 710
    const-string/jumbo v0, " op_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 711
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 712
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 703
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    add-int/2addr v0, v1

    .line 704
    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    return v0
.end method

.method final d()Lcom/google/a/a/a/a/y;
    .locals 2

    .prologue
    .line 735
    new-instance v0, Lcom/google/a/a/a/a/y;

    invoke-direct {v0}, Lcom/google/a/a/a/a/y;-><init>()V

    .line 736
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    .line 737
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    .line 738
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    if-ne p0, p1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ag;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 695
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ag;

    .line 696
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ag;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ag;->b:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
