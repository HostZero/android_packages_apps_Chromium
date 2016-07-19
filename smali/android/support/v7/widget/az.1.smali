.class final Landroid/support/v7/widget/az;
.super Landroid/support/v7/widget/ax;
.source "OrientationHelper.java"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aN;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ax;-><init>(Landroid/support/v7/widget/aN;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 318
    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    .line 8996
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {p1}, Landroid/support/v7/widget/aN;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 318
    iget v0, v0, Landroid/support/v7/widget/aO;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    .line 7694
    iget-object v1, v0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 7695
    iget-object v0, v0, Landroid/support/v7/widget/aN;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 311
    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    .line 8020
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {p1}, Landroid/support/v7/widget/aN;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 311
    iget v0, v0, Landroid/support/v7/widget/aO;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->k()I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 295
    invoke-static {p1}, Landroid/support/v7/widget/aN;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/aO;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/aO;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v1}, Landroid/support/v7/widget/aN;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 303
    invoke-static {p1}, Landroid/support/v7/widget/aN;->b(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/aO;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/aO;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->i()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v1}, Landroid/support/v7/widget/aN;->k()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v1}, Landroid/support/v7/widget/aN;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/aN;

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->m()I

    move-result v0

    return v0
.end method
