.class final Landroid/support/v7/widget/f;
.super Landroid/support/v7/widget/z;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/i;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 612
    iput-object p1, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    .line 613
    const/4 v0, 0x0

    const v1, 0x7f010071

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 615
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/f;->setClickable(Z)V

    .line 616
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/f;->setFocusable(Z)V

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/f;->setVisibility(I)V

    .line 618
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/f;->setEnabled(Z)V

    .line 620
    new-instance v0, Landroid/support/v7/widget/g;

    invoke-direct {v0, p0, p0, p1}, Landroid/support/v7/widget/g;-><init>(Landroid/support/v7/widget/f;Landroid/view/View;Landroid/support/v7/widget/a;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/f;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 649
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 653
    invoke-super {p0}, Landroid/support/v7/widget/z;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    :goto_0
    return v1

    .line 657
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/f;->playSoundEffect(I)V

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    goto :goto_0
.end method

.method protected final setFrame(IIII)Z
    .locals 8

    .prologue
    .line 674
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/z;->setFrame(IIII)Z

    move-result v0

    .line 677
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 678
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 679
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getWidth()I

    move-result v1

    .line 681
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getHeight()I

    move-result v3

    .line 682
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 683
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 684
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/f;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 685
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 686
    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 687
    sub-int v5, v1, v4

    sub-int v6, v3, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v6, v1, v3}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 691
    :cond_0
    return v0
.end method
