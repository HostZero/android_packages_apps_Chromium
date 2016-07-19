.class Landroid/support/v4/view/ab;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/an;


# instance fields
.field a:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ab;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 968
    instance-of v0, p1, Landroid/support/v4/view/R;

    if-eqz v0, :cond_0

    .line 969
    check-cast p1, Landroid/support/v4/view/R;

    invoke-interface {p1}, Landroid/support/v4/view/R;->stopNestedScroll()V

    .line 971
    :cond_0
    return-void
.end method

.method public B(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1021
    .line 2059
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1021
    goto :goto_0
.end method

.method public C(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1036
    .line 2109
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1036
    goto :goto_0
.end method

.method public D(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 581
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 520
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/bf;)Landroid/support/v4/view/bf;
    .locals 0

    .prologue
    .line 878
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 922
    .line 2041
    instance-of v0, p1, Landroid/support/v4/view/W;

    if-eqz v0, :cond_0

    .line 2042
    check-cast p1, Landroid/support/v4/view/W;

    invoke-interface {p1, p2}, Landroid/support/v4/view/W;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 923
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 927
    .line 2053
    instance-of v0, p1, Landroid/support/v4/view/W;

    if-eqz v0, :cond_0

    .line 2054
    check-cast p1, Landroid/support/v4/view/W;

    invoke-interface {p1, p2}, Landroid/support/v4/view/W;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 928
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/T;)V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/support/v4/view/ab;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Landroid/support/v4/view/ab;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    instance-of v2, p1, Landroid/support/v4/view/V;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/support/v4/view/V;

    .line 1936
    invoke-interface {p1}, Landroid/support/v4/view/V;->computeHorizontalScrollOffset()I

    move-result v2

    .line 1937
    invoke-interface {p1}, Landroid/support/v4/view/V;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/V;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1939
    if-eqz v3, :cond_2

    .line 1940
    if-gez p2, :cond_1

    .line 1941
    if-lez v2, :cond_0

    move v2, v0

    .line 469
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1941
    goto :goto_0

    .line 1943
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 469
    goto :goto_1
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    instance-of v2, p1, Landroid/support/v4/view/V;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/support/v4/view/V;

    .line 1948
    invoke-interface {p1}, Landroid/support/v4/view/V;->computeVerticalScrollOffset()I

    move-result v2

    .line 1949
    invoke-interface {p1}, Landroid/support/v4/view/V;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/V;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1951
    if-eqz v3, :cond_2

    .line 1952
    if-gez p2, :cond_1

    .line 1953
    if-lez v2, :cond_0

    move v2, v0

    .line 473
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1953
    goto :goto_0

    .line 1955
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 473
    goto :goto_1
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 509
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 538
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public n(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method public o(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 722
    invoke-static {p1}, Landroid/support/v4/view/c;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 727
    invoke-static {p1}, Landroid/support/v4/view/c;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public t(Landroid/view/View;)Landroid/support/v4/view/aP;
    .locals 1

    .prologue
    .line 732
    new-instance v0, Landroid/support/v4/view/aP;

    invoke-direct {v0, p1}, Landroid/support/v4/view/aP;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public v(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public w(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public y(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method public z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 909
    instance-of v0, p1, Landroid/support/v4/view/R;

    if-eqz v0, :cond_0

    .line 910
    check-cast p1, Landroid/support/v4/view/R;

    invoke-interface {p1}, Landroid/support/v4/view/R;->isNestedScrollingEnabled()Z

    move-result v0

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
