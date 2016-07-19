.class public Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ViewResourceFrameLayout.java"


# instance fields
.field private mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected createResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    invoke-direct {v0, p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;->isReadyForCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    invoke-virtual {v1, p2}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->invalidate(Landroid/graphics/Rect;)V

    .line 67
    :cond_0
    return-object v0
.end method

.method protected isReadyForCapture()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;->createResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    .line 40
    return-void
.end method
