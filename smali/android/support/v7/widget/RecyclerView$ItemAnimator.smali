.class public abstract Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:Landroid/support/v7/widget/aJ;

.field private b:Ljava/util/ArrayList;

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 9570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9626
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/aJ;

    .line 9627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    .line 9630
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    .line 9631
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    .line 9632
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    .line 9633
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    .line 10175
    return-void
.end method

.method static e(Landroid/support/v7/widget/aY;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 9931
    # getter for: Landroid/support/v7/widget/aY;->mFlags:I
    invoke-static {p0}, Landroid/support/v7/widget/aY;->access$6300(Landroid/support/v7/widget/aY;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 9932
    invoke-virtual {p0}, Landroid/support/v7/widget/aY;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9933
    const/4 v0, 0x4

    .line 9942
    :cond_0
    :goto_0
    return v0

    .line 9935
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 9936
    invoke-virtual {p0}, Landroid/support/v7/widget/aY;->getOldPosition()I

    move-result v1

    .line 9937
    invoke-virtual {p0}, Landroid/support/v7/widget/aY;->getAdapterPosition()I

    move-result v2

    .line 9938
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 9939
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(Landroid/support/v7/widget/aJ;)V
    .locals 0

    .prologue
    .line 9716
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/aJ;

    .line 9717
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/v7/widget/aY;)V
.end method

.method public abstract c(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;Landroid/support/v7/widget/aK;)Z
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 9641
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    return-wide v0
.end method

.method public final d(Landroid/support/v7/widget/aY;)Landroid/support/v7/widget/aK;
    .locals 1

    .prologue
    .line 11140
    new-instance v0, Landroid/support/v7/widget/aK;

    invoke-direct {v0}, Landroid/support/v7/widget/aK;-><init>()V

    .line 9755
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aK;->a(Landroid/support/v7/widget/aY;)Landroid/support/v7/widget/aK;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 9659
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 9677
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/aY;)V
    .locals 1

    .prologue
    .line 10016
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/aJ;

    if-eqz v0, :cond_0

    .line 10017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/aJ;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aJ;->a(Landroid/support/v7/widget/aY;)V

    .line 10019
    :cond_0
    return-void
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 9695
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/aY;)Z
    .locals 1

    .prologue
    .line 10115
    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 10123
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10124
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 10125
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10127
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10128
    return-void
.end method
