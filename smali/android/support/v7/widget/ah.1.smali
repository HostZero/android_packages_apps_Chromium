.class final Landroid/support/v7/widget/ah;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ah;->a:Z

    .line 1924
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ah;->h:I

    .line 1942
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/aR;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1958
    iget-object v1, p0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 8974
    iget-object v1, p0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    .line 8975
    :goto_0
    if-ge v2, v3, :cond_1

    .line 8976
    iget-object v0, p0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    iget-object v1, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 8977
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 9736
    iget-object v4, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v4}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v4

    .line 8978
    if-nez v4, :cond_0

    .line 8981
    iget v4, p0, Landroid/support/v7/widget/ah;->d:I

    .line 9764
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v0

    .line 8981
    if-ne v4, v0, :cond_0

    .line 8982
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ah;->a(Landroid/view/View;)V

    move-object v0, v1

    .line 8983
    :goto_1
    return-object v0

    .line 8975
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 8986
    :cond_1
    const/4 v0, 0x0

    .line 1959
    goto :goto_1

    .line 1961
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/ah;->d:I

    .line 10359
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/aR;->a(IZ)Landroid/view/View;

    move-result-object v0

    .line 1962
    iget v1, p0, Landroid/support/v7/widget/ah;->d:I

    iget v2, p0, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/ah;->d:I

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1994
    .line 11004
    iget-object v0, p0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 11005
    const/4 v3, 0x0

    .line 11006
    const v1, 0x7fffffff

    .line 11010
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 11011
    iget-object v0, p0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    iget-object v2, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 11012
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 11013
    if-eq v2, p1, :cond_3

    .line 11736
    iget-object v6, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v6}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v6

    .line 11013
    if-nez v6, :cond_3

    .line 11764
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v0

    .line 11016
    iget v6, p0, Landroid/support/v7/widget/ah;->d:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/v7/widget/ah;->e:I

    mul-int/2addr v0, v6

    .line 11018
    if-ltz v0, :cond_3

    .line 11021
    if-ge v0, v1, :cond_3

    .line 11024
    if-eqz v0, :cond_1

    move-object v1, v2

    .line 11010
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1995
    :cond_1
    if-nez v2, :cond_2

    .line 1996
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ah;->d:I

    .line 2001
    :goto_2
    return-void

    .line 1998
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 12764
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v0

    .line 1998
    iput v0, p0, Landroid/support/v7/widget/ah;->d:I

    goto :goto_2

    :cond_3
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method
