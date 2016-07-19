.class Landroid/support/v4/view/ai;
.super Landroid/support/v4/view/ah;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1407
    invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1431
    .line 2044
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1432
    return-void
.end method

.method public final h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1426
    .line 2040
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 1426
    return v0
.end method

.method public final l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1436
    .line 2048
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 1436
    return v0
.end method

.method public final m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1441
    .line 2052
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 1441
    return v0
.end method

.method public final u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1451
    .line 2060
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    .line 1451
    return v0
.end method
