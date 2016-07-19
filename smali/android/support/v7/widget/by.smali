.class public final Landroid/support/v7/widget/by;
.super Landroid/support/v7/app/a;
.source "Toolbar.java"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1873
    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/a;-><init>(II)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 1874
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/by;->a:I

    .line 1875
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1869
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 1870
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/a;)V
    .locals 1

    .prologue
    .line 1893
    invoke-direct {p0, p1}, Landroid/support/v7/app/a;-><init>(Landroid/support/v7/app/a;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 1894
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/by;)V
    .locals 1

    .prologue
    .line 1887
    invoke-direct {p0, p1}, Landroid/support/v7/app/a;-><init>(Landroid/support/v7/app/a;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 1889
    iget v0, p1, Landroid/support/v7/widget/by;->b:I

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 1890
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1904
    invoke-direct {p0, p1}, Landroid/support/v7/app/a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 1905
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1897
    invoke-direct {p0, p1}, Landroid/support/v7/app/a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/by;->b:I

    .line 2908
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/by;->leftMargin:I

    .line 2909
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/by;->topMargin:I

    .line 2910
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/by;->rightMargin:I

    .line 2911
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/by;->bottomMargin:I

    .line 1901
    return-void
.end method
