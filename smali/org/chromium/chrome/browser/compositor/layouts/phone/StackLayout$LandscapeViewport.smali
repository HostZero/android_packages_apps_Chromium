.class Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;
.super Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;
.source "StackLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V
    .locals 1

    .prologue
    .line 729
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V

    .line 731
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->mWidth:F

    .line 732
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->mHeight:F

    .line 733
    return-void
.end method


# virtual methods
.method getHeight()F
    .locals 1

    .prologue
    .line 766
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getWidth()F

    move-result v0

    return v0
.end method

.method getInnerMargin()F
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInnerMarginPercent:F
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinMaxInnerMargin:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->mWidth:F

    const v3, 0x3e2e147b    # 0.17f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 739
    return v0
.end method

.method getStack0Left()F
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method getStack0ToStack1TranslationX()F
    .locals 1

    .prologue
    .line 771
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0ToStack1TranslationY()F

    move-result v0

    return v0
.end method

.method getStack0ToStack1TranslationY()F
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->mWidth:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->getInnerMargin()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method getStack0Top()F
    .locals 2

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->getClampedRenderedScrollOffset()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getFullScrollDistance()F
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->getTopHeightOffset()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method getStackIndexAt(FF)I
    .locals 2

    .prologue
    .line 744
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->getStack0Top()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 745
    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getWidth()F
    .locals 1

    .prologue
    .line 761
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getHeight()F

    move-result v0

    return v0
.end method
