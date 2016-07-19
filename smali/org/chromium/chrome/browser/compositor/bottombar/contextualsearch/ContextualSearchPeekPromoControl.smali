.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;
.source "ContextualSearchPeekPromoControl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# instance fields
.field private final mDefaultHeightPx:F

.field private mHeightPx:F

.field private mIsVisible:Z

.field private final mPaddingPx:F

.field private final mRippleMaximumWidthPx:F

.field private final mRippleMinimumWidthPx:F

.field private mRippleOpacity:F

.field private mRippleWidthPx:F

.field private mTextOpacity:F


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 7

    .prologue
    .line 91
    sget v2, Lorg/chromium/chrome/R$layout;->contextual_search_peek_promo_text_view:I

    sget v3, Lorg/chromium/chrome/R$id;->contextual_search_peek_promo_text_view:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 96
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->contextual_search_peek_promo_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mDefaultHeightPx:F

    .line 98
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->contextual_search_peek_promo_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mPaddingPx:F

    .line 101
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleMinimumWidthPx:F

    .line 102
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getMaximumWidthPx()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleMaximumWidthPx:F

    .line 103
    return-void
.end method

.method private updateForAppearanceAnimation(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 250
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleMinimumWidthPx:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleMaximumWidthPx:F

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleWidthPx:F

    .line 253
    invoke-static {v2, v4, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleOpacity:F

    .line 256
    sub-float v0, p1, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    .line 258
    invoke-static {v2, v4, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mTextOpacity:F

    .line 259
    return-void
.end method


# virtual methods
.method public animateAppearance()V
    .locals 10

    .prologue
    .line 230
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;->APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xda

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 232
    return-void
.end method

.method getHeightPeekingPx()F
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mDefaultHeightPx:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeightPx()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mHeightPx:F

    return v0
.end method

.method public getPaddingPx()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mPaddingPx:F

    return v0
.end method

.method public getRippleOpacity()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleOpacity:F

    return v0
.end method

.method public getRippleWidthPx()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mRippleWidthPx:F

    return v0
.end method

.method public getTextOpacity()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mTextOpacity:F

    return v0
.end method

.method hide()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mIsVisible:Z

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mHeightPx:F

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mIsVisible:Z

    return v0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public onUpdateFromCloseToPeek(F)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mDefaultHeightPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mHeightPx:F

    goto :goto_0
.end method

.method public onUpdateFromExpandToMaximize(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mHeightPx:F

    .line 218
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mTextOpacity:F

    goto :goto_0
.end method

.method public onUpdateFromPeekToExpand(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mDefaultHeightPx:F

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mHeightPx:F

    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mTextOpacity:F

    goto :goto_0
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;F)V
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;->APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl$AnimationType;

    if-ne p1, v0, :cond_0

    .line 237
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->updateForAppearanceAnimation(F)V

    .line 239
    :cond_0
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mIsVisible:Z

    .line 113
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mDefaultHeightPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->mHeightPx:F

    .line 115
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->invalidate()V

    goto :goto_0
.end method
