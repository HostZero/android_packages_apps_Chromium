.class public final Lcom/google/ipc/invalidation/ticl/a/s;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/ipc/invalidation/b/c;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/N;

.field private final d:Z


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 628
    const-string/jumbo v0, "client_type"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    .line 630
    const-string/jumbo v0, "client_name"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    .line 632
    const-string/jumbo v0, "client_config"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    .line 634
    const-string/jumbo v0, "skip_start_for_test"

    invoke-static {v0, p4}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    .line 636
    return-void
.end method

.method public static a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Z)Lcom/google/ipc/invalidation/ticl/a/s;
    .locals 3

    .prologue
    .line 616
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/s;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/ipc/invalidation/ticl/a/s;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/s;
    .locals 5

    .prologue
    .line 685
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 686
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/s;

    iget-object v1, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/s;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Lcom/google/a/a/a/a/h;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/s;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 666
    const-string/jumbo v0, "<CreateClient:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 667
    const-string/jumbo v0, " client_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 668
    const-string/jumbo v0, " client_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 669
    const-string/jumbo v0, " client_config="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 670
    const-string/jumbo v0, " skip_start_for_test="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 671
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 672
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 659
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 662
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 647
    if-ne p0, p1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 648
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/s;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 649
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/s;

    .line 650
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/s;
    .locals 2

    .prologue
    .line 697
    new-instance v0, Lcom/google/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/s;-><init>()V

    .line 698
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    .line 699
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/s;->b:[B

    .line 700
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->c:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->n()Lcom/google/a/a/a/a/h;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    .line 701
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/s;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    .line 702
    return-object v0
.end method
