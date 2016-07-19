.class Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;
.super Ljava/lang/Object;
.source "StackLayout.java"


# instance fields
.field protected mHeight:F

.field protected mWidth:F

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V
    .locals 1

    .prologue
    .line 665
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mWidth:F

    .line 667
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mHeight:F

    .line 668
    return-void
.end method


# virtual methods
.method getClampedRenderedScrollOffset()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 671
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingFromModelChange:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$300(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 674
    :cond_1
    return v0
.end method

.method getHeight()F
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mHeight:F

    return v0
.end method

.method getInnerMargin()F
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInnerMarginPercent:F
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinMaxInnerMargin:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mWidth:F

    const v3, 0x3e2e147b    # 0.17f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 681
    return v0
.end method

.method getStack0Left()F
    .locals 3

    .prologue
    .line 696
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getInnerMargin()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getClampedRenderedScrollOffset()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getFullScrollDistance()F
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getClampedRenderedScrollOffset()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getFullScrollDistance()F
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method getStack0ToStack1TranslationX()F
    .locals 2

    .prologue
    .line 714
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mWidth:F

    neg-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getInnerMargin()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mWidth:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getInnerMargin()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method getStack0ToStack1TranslationY()F
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method getStack0Top()F
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getTopHeightOffset()F

    move-result v0

    return v0
.end method

.method getStackIndexAt(FF)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 685
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0Left()F

    move-result v2

    .line 688
    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 688
    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0Left()F

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    .line 691
    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getTopHeightOffset()F
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackOffsetYPercent:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->access$800(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method getWidth()F
    .locals 2

    .prologue
    .line 702
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->mWidth:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getInnerMargin()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
