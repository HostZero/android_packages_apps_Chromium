.class final Landroid/support/v4/widget/u;
.super Landroid/support/v4/widget/ap;
.source "DrawerLayout.java"


# instance fields
.field private final a:I

.field private b:Landroid/support/v4/widget/am;

.field private final c:Ljava/lang/Runnable;

.field private synthetic d:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1

    .prologue
    .line 1811
    iput-object p1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ap;-><init>()V

    .line 1805
    new-instance v0, Landroid/support/v4/widget/v;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/v;-><init>(Landroid/support/v4/widget/u;)V

    iput-object v0, p0, Landroid/support/v4/widget/u;->c:Ljava/lang/Runnable;

    .line 1812
    iput p2, p0, Landroid/support/v4/widget/u;->a:I

    .line 1813
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/u;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1801
    .line 2896
    iget-object v1, p0, Landroid/support/v4/widget/u;->b:Landroid/support/v4/widget/am;

    invoke-virtual {v1}, Landroid/support/v4/widget/am;->b()I

    move-result v2

    .line 2897
    iget v1, p0, Landroid/support/v4/widget/u;->a:I

    if-ne v1, v5, :cond_4

    move v3, v4

    .line 2898
    :goto_0
    if-eqz v3, :cond_5

    .line 2899
    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 2900
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_0
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    .line 2906
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2909
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 2910
    iget-object v3, p0, Landroid/support/v4/widget/u;->b:Landroid/support/v4/widget/am;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    .line 2911
    iput-boolean v4, v0, Landroid/support/v4/widget/s;->c:Z

    .line 2912
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2914
    invoke-direct {p0}, Landroid/support/v4/widget/u;->c()V

    .line 2916
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->a()V

    .line 1801
    :cond_3
    return-void

    :cond_4
    move v3, v0

    .line 2897
    goto :goto_0

    .line 2902
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 2903
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 1862
    iget v1, p0, Landroid/support/v4/widget/u;->a:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 1863
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_1

    .line 1865
    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    .line 1867
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/u;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1821
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/u;->b:Landroid/support/v4/widget/am;

    invoke-virtual {v1}, Landroid/support/v4/widget/am;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V

    .line 1834
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 1935
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1936
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1941
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1942
    iget-object v1, p0, Landroid/support/v4/widget/u;->b:Landroid/support/v4/widget/am;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/am;->a(Landroid/view/View;I)V

    .line 1944
    :cond_0
    return-void

    .line 1938
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/widget/am;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Landroid/support/v4/widget/u;->b:Landroid/support/v4/widget/am;

    .line 1817
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1873
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)F

    move-result v1

    .line 1874
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1877
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1878
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1884
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/u;->b:Landroid/support/v4/widget/am;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/am;->a(II)Z

    .line 1885
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1886
    return-void

    .line 1878
    :cond_2
    neg-int v0, v2

    goto :goto_0

    .line 1880
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1881
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1839
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1842
    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1848
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 1849
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1851
    return-void

    .line 1845
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 1846
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 1849
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1827
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/u;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1957
    :goto_0
    return v0

    .line 1956
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1957
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/support/v4/widget/u;->d:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/u;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1891
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 1856
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/s;->c:Z

    .line 1858
    invoke-direct {p0}, Landroid/support/v4/widget/u;->c()V

    .line 1859
    return-void
.end method

.method public final c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1948
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1963
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method
