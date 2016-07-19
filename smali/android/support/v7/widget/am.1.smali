.class final Landroid/support/v7/widget/am;
.super Landroid/support/v7/internal/widget/z;
.source "ListPopupWindow.java"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/support/v4/widget/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1586
    const/4 v0, 0x0

    const v1, 0x7f0100ac

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1587
    iput-boolean p2, p0, Landroid/support/v7/widget/am;->c:Z

    .line 1588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->setCacheColorHint(I)V

    .line 1589
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/am;Z)Z
    .locals 0

    .prologue
    .line 1534
    iput-boolean p1, p0, Landroid/support/v7/widget/am;->b:Z

    return p1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 11

    .prologue
    const/16 v10, 0x15

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1598
    .line 1601
    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1602
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    move v3, v2

    .line 1635
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    .line 3663
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/am;->d:Z

    .line 3664
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/am;->setPressed(Z)V

    .line 3666
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->drawableStateChanged()V

    .line 3668
    iget v0, p0, Landroid/support/v7/widget/am;->a:I

    invoke-virtual {p0}, Landroid/support/v7/widget/am;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3669
    if-eqz v0, :cond_2

    .line 3670
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1640
    :cond_2
    if-eqz v3, :cond_c

    .line 1641
    iget-object v0, p0, Landroid/support/v7/widget/am;->e:Landroid/support/v4/widget/G;

    if-nez v0, :cond_3

    .line 1642
    new-instance v0, Landroid/support/v4/widget/G;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/G;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/support/v7/widget/am;->e:Landroid/support/v4/widget/G;

    .line 1644
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/am;->e:Landroid/support/v4/widget/G;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/G;->a(Z)Landroid/support/v4/widget/a;

    .line 1645
    iget-object v0, p0, Landroid/support/v7/widget/am;->e:Landroid/support/v4/widget/G;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/G;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1650
    :cond_4
    :goto_2
    return v3

    :pswitch_0
    move v0, v1

    move v3, v1

    .line 1605
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1610
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1611
    if-gez v4, :cond_5

    move v0, v1

    move v3, v1

    .line 1613
    goto :goto_1

    .line 1616
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1617
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 1618
    invoke-virtual {p0, v5, v4}, Landroid/support/v7/widget/am;->pointToPosition(II)I

    move-result v6

    .line 1619
    if-ne v6, v8, :cond_6

    move v3, v0

    move v0, v2

    .line 1621
    goto :goto_1

    .line 1624
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1625
    int-to-float v5, v5

    int-to-float v4, v4

    .line 2680
    iput-boolean v2, p0, Landroid/support/v7/widget/am;->d:Z

    .line 2683
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_7

    .line 2684
    invoke-virtual {p0, v5, v4}, Landroid/support/v7/widget/am;->drawableHotspotChanged(FF)V

    .line 2686
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->isPressed()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2687
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/am;->setPressed(Z)V

    .line 2691
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->layoutChildren()V

    .line 2695
    iget v7, p0, Landroid/support/v7/widget/am;->a:I

    if-eq v7, v8, :cond_9

    .line 2696
    iget v7, p0, Landroid/support/v7/widget/am;->a:I

    invoke-virtual {p0}, Landroid/support/v7/widget/am;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2697
    if-eqz v7, :cond_9

    if-eq v7, v0, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2698
    invoke-virtual {v7, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2701
    :cond_9
    iput v6, p0, Landroid/support/v7/widget/am;->a:I

    .line 2704
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    .line 2705
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    .line 2706
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v10, :cond_a

    .line 2707
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2709
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_b

    .line 2710
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2714
    :cond_b
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/am;->setSelection(I)V

    .line 2715
    invoke-virtual {p0, v6, v0, v5, v4}, Landroid/support/v7/widget/am;->a(ILandroid/view/View;FF)V

    .line 2720
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/am;->a(Z)V

    .line 2724
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->refreshDrawableState()V

    .line 1628
    if-ne v3, v2, :cond_0

    .line 3658
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/am;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 3659
    invoke-virtual {p0, v0, v6, v4, v5}, Landroid/support/v7/widget/am;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    .line 1646
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/am;->e:Landroid/support/v4/widget/G;

    if-eqz v0, :cond_4

    .line 1647
    iget-object v0, p0, Landroid/support/v7/widget/am;->e:Landroid/support/v4/widget/G;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/G;->a(Z)Landroid/support/v4/widget/a;

    goto/16 :goto_2

    :pswitch_2
    move v0, v2

    goto/16 :goto_3

    .line 1602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final hasFocus()Z
    .locals 1

    .prologue
    .line 1765
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/z;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1745
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/z;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 1755
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/z;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInTouchMode()Z
    .locals 1

    .prologue
    .line 1735
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/am;->b:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/internal/widget/z;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
