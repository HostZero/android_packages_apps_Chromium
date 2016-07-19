.class public Lorg/chromium/chrome/browser/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/chrome/browser/util/ViewUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/util/ViewUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureBitmap(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/ViewUtils;->recursiveInvalidate(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 40
    return-void
.end method

.method public static getRelativeDrawPosition(Landroid/view/View;Landroid/view/View;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    sget-boolean v0, Lorg/chromium/chrome/browser/util/ViewUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    aput v2, p2, v2

    .line 72
    aput v2, p2, v3

    .line 73
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 74
    aget v0, p2, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v2

    .line 75
    aget v0, p2, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v3

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public static getRelativeLayoutPosition(Landroid/view/View;Landroid/view/View;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    sget-boolean v0, Lorg/chromium/chrome/browser/util/ViewUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    aput v2, p2, v2

    .line 53
    aput v2, p2, v3

    .line 54
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 55
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v2

    .line 56
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v3

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method private static recursiveInvalidate(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 21
    check-cast p0, Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 23
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 26
    invoke-static {v2}, Lorg/chromium/chrome/browser/util/ViewUtils;->recursiveInvalidate(Landroid/view/View;)V

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method
