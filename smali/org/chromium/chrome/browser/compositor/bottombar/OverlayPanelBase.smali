.class abstract Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;
.super Ljava/lang/Object;
.source "OverlayPanelBase.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CLOSE_ICON_DRAWABLE_ID:I

.field protected static final PREVIOUS_STATES:Ljava/util/Map;


# instance fields
.field private mArrowIconOpacity:F

.field private mBarBorderHeight:F

.field private mBarHeight:F

.field private mBarHeightExpanded:F

.field private mBarHeightMaximized:F

.field private mBarHeightPeeking:F

.field private mBarMarginSide:F

.field private mBarShadowOpacity:F

.field private mBarShadowVisible:Z

.field private mBasePageBrightness:F

.field private mBasePageSelectionYPx:F

.field private mBasePageTargetY:F

.field private mBasePageY:F

.field private mCloseIconOpacity:F

.field private mCloseIconWidth:F

.field protected mContainerView:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private mHeight:F

.field private mIsBarBorderVisible:Z

.field private mIsFullWidthSizePanelForTesting:Z

.field private mIsMaximized:Z

.field private mIsProgressBarVisible:Z

.field private mIsSearchPromoViewVisible:Z

.field private mIsShowing:Z

.field private mLayoutHeight:F

.field private mLayoutWidth:F

.field private mMaximumHeight:F

.field private mMaximumWidth:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOverrideIsFullWidthSizePanelForTesting:Z

.field private mPanelState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field private mProgressBarCompletion:I

.field private mProgressBarHeight:F

.field private mProgressBarOpacity:F

.field private mPromoContentHeightPx:F

.field private mPromoHeightPx:F

.field private mPromoOpacity:F

.field private mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

.field private mPromoVisible:Z

.field protected mPxToDp:F

.field protected mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

.field private mToolbarHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->$assertionsDisabled:Z

    .line 87
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_close:I

    sput v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->CLOSE_ICON_DRAWABLE_ID:I

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->PREVIOUS_STATES:Ljava/util/Map;

    .line 145
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageSelectionYPx:F

    .line 123
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageTargetY:F

    .line 132
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPanelState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 492
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowVisible:Z

    .line 493
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowOpacity:F

    .line 673
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoVisible:Z

    .line 674
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoContentHeightPx:F

    .line 1422
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsSearchPromoViewVisible:Z

    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    .line 156
    return-void
.end method

.method private findLargestPanelStateFromHeight(F)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 6

    .prologue
    .line 1018
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 1022
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->values()[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 1023
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isValidUiState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1026
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 1032
    :goto_1
    return-object v0

    .line 1022
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getBarHeightExpanded()F
    .locals 1

    .prologue
    .line 1210
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightExpanded:F

    .line 1213
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    goto :goto_0
.end method

.method private getBarHeightMaximized()F
    .locals 1

    .prologue
    .line 1218
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightMaximized:F

    .line 1221
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    goto :goto_0
.end method

.method private getBasePageTargetY()F
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageTargetY:F

    return v0
.end method

.method private getFullscreenWidth()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mLayoutWidth:F

    return v0
.end method

.method private getMaximumSupportedState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 790
    :goto_0
    return-object v0

    .line 787
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    goto :goto_0

    .line 790
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    goto :goto_0
.end method

.method private getPreviousPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 2

    .prologue
    .line 798
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->PREVIOUS_STATES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 799
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->PREVIOUS_STATES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 802
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    goto :goto_0
.end method

.method private getStateCompletion(FLorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    .line 1047
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v2

    .line 1048
    cmpl-float v3, v1, v0

    if-nez v3, :cond_0

    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    .line 1055
    :goto_0
    return v0

    .line 1048
    :cond_0
    sub-float v0, p1, v1

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private isValidUiState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPromoViewAtYPosition(F)V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isPromoVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getOffsetX()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v0, v1

    .line 1487
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1488
    neg-float v0, v0

    .line 1491
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->setTranslationX(F)V

    .line 1492
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->setTranslationY(F)V

    .line 1493
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->setVisibility(I)V

    .line 1497
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->requestLayout()V

    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsSearchPromoViewVisible:Z

    goto :goto_0
.end method

.method private updateBarShadow()V
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1264
    const/high16 v1, 0x41100000    # 9.0f

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v1, v2

    .line 1265
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoVisible:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 1266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowVisible:Z

    .line 1267
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    .line 1268
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowOpacity:F

    .line 1274
    :goto_1
    return-void

    .line 1268
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    div-float/2addr v1, v2

    invoke-static {v4, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    goto :goto_0

    .line 1271
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowVisible:Z

    .line 1272
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowOpacity:F

    goto :goto_1
.end method

.method private updatePanelForHeight(F)V
    .locals 3

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->findLargestPanelStateFromHeight(F)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    .line 977
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPreviousPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v1

    .line 978
    invoke-direct {p0, p1, v1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getStateCompletion(FLorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    .line 980
    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePanelSize(FLorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;F)V

    .line 982
    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v2, :cond_2

    .line 983
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePanelForCloseOrPeek(F)V

    .line 989
    :cond_1
    :goto_0
    return-void

    .line 984
    :cond_2
    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v2, :cond_3

    .line 985
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePanelForExpansion(F)V

    goto :goto_0

    .line 986
    :cond_3
    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v2, :cond_1

    .line 987
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePanelForMaximization(F)V

    goto :goto_0
.end method

.method private updatePanelSize(FLorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;F)V
    .locals 1

    .prologue
    .line 999
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mHeight:F

    .line 1000
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateOverlayPanelX()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetX:F

    .line 1001
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateOverlayPanelY()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetY:F

    .line 1002
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsMaximized:Z

    .line 1003
    return-void

    .line 1002
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePromoVisibility(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1247
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isPromoVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoVisible:Z

    .line 1250
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoContentHeightPx:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoContentHeightPx:F

    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    .line 1252
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoOpacity:F

    .line 1258
    :goto_0
    return-void

    .line 1254
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoVisible:Z

    .line 1255
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    .line 1256
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoOpacity:F

    goto :goto_0
.end method


# virtual methods
.method protected abstract animatePromoAcceptance()V
.end method

.method protected abstract animateSearchTermResolution()V
.end method

.method protected calculateBasePageTargetY(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1307
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1333
    :goto_0
    return v0

    .line 1310
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageSelectionYPx:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v1, v2

    .line 1316
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v2

    .line 1319
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v3

    .line 1320
    sub-float/2addr v3, v2

    .line 1321
    neg-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 1325
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1328
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mToolbarHeight:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTopControlsOffsetDp()F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 1331
    neg-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected calculateOverlayPanelWidth()F
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getFullscreenWidth()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44160000    # 600.0f

    goto :goto_0
.end method

.method protected calculateOverlayPanelX()F
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getFullscreenWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateOverlayPanelWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected calculateOverlayPanelY()F
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mHeight:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected abstract cancelSearchTermResolutionAnimation()V
.end method

.method protected abstract closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
.end method

.method protected createPromoView()V
    .locals 3

    .prologue
    .line 1428
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isPromoVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    if-nez v0, :cond_2

    .line 1429
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1432
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->contextual_search_opt_out_promo:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1434
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContainerView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_promo:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    .line 1437
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    sget v1, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_promo:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->getResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 1442
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->setPromoHost(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;)V

    .line 1444
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePromoLayout()V

    .line 1446
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1448
    :cond_2
    return-void
.end method

.method protected destroyPromoView()V
    .locals 2

    .prologue
    .line 1454
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1456
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    .line 1457
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    sget v1, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_promo:I

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->unregisterResource(I)V

    .line 1461
    :cond_0
    return-void
.end method

.method protected doesPanelHeightMatchState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z
    .locals 2

    .prologue
    .line 963
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getHeight()F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findNearestPanelStateFromHeight(FF)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 899
    cmpg-float v1, p1, v7

    if-gez v1, :cond_1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 927
    :cond_0
    :goto_0
    return-object v2

    .line 902
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->values()[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v1

    aget-object v1, v1, v0

    .line 904
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->values()[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v4

    array-length v5, v4

    move v3, v0

    move-object v0, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 905
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isValidUiState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 912
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_4

    :cond_2
    move-object v1, v2

    .line 904
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1

    :cond_3
    move-object v2, v0

    move-object v0, v1

    .line 920
    :cond_4
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v3

    .line 921
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    sub-float v4, v1, v3

    .line 922
    cmpg-float v1, p2, v7

    if-gez v1, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getThresholdToNextState()F

    move-result v1

    .line 924
    :goto_3
    sub-float v3, p1, v3

    div-float/2addr v3, v4

    cmpl-float v1, v3, v1

    if-gtz v1, :cond_0

    move-object v2, v0

    .line 927
    goto :goto_0

    .line 922
    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getThresholdToNextState()F

    move-result v5

    sub-float/2addr v1, v5

    goto :goto_3

    :cond_6
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2
.end method

.method public getArrowIconOpacity()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mArrowIconOpacity:F

    return v0
.end method

.method public getArrowIconRotation()F
    .locals 1

    .prologue
    .line 553
    const/high16 v0, -0x3d4c0000    # -90.0f

    return v0
.end method

.method public getBarBorderHeight()F
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarBorderHeight:F

    return v0
.end method

.method protected getBarContainerHeight()F
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarHeight()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPeekPromoHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getBarHeight()F
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeight:F

    return v0
.end method

.method protected getBarHeightPeeking()F
    .locals 1

    .prologue
    .line 1229
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    return v0
.end method

.method public getBarMarginSide()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarMarginSide:F

    return v0
.end method

.method public getBarShadowOpacity()F
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowOpacity:F

    return v0
.end method

.method public getBarShadowVisible()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarShadowVisible:Z

    return v0
.end method

.method public getBasePageBackgroundColor()I
    .locals 3

    .prologue
    .line 613
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageBrightness:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 614
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v0

    .line 615
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getBasePageBrightness()F
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageBrightness:F

    return v0
.end method

.method public getBasePageY()F
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageY:F

    return v0
.end method

.method public getCloseIconDimension()F
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->CLOSE_ICON_DRAWABLE_ID:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconWidth:F

    .line 571
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconWidth:F

    return v0
.end method

.method public getCloseIconOpacity()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconOpacity:F

    return v0
.end method

.method public getCloseIconX()F
    .locals 2

    .prologue
    .line 578
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarMarginSide()F

    move-result v1

    add-float/2addr v0, v1

    .line 581
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarMarginSide()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getCloseIconDimension()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getContentViewHeightPx()I
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getToolbarHeight()F

    move-result v0

    .line 387
    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mMaximumHeight:F

    sub-float v0, v1, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 385
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    goto :goto_0
.end method

.method public getContentViewWidthPx()I
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getMaximumWidthPx()I

    move-result v0

    return v0
.end method

.method protected abstract getControlContainerHeightResource()I
.end method

.method protected getExpandedHeight()F
    .locals 3

    .prologue
    const v2, 0x3f333333    # 0.7f

    .line 837
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    mul-float/2addr v0, v2

    .line 840
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mToolbarHeight:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method public getFullscreenY(F)F
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mToolbarHeight:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTopControlsOffsetDp()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mHeight:F

    return v0
.end method

.method protected getMaximizedHeight()F
    .locals 2

    .prologue
    .line 848
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mToolbarHeight:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMaximumWidthPx()I
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mMaximumWidth:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetY:F

    return v0
.end method

.method public getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPeekedHeight()F

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 818
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_1

    .line 819
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getExpandedHeight()F

    move-result v0

    goto :goto_0

    .line 820
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_2

    .line 821
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getMaximizedHeight()F

    move-result v0

    goto :goto_0

    .line 823
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPanelState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    return-object v0
.end method

.method protected getPeekPromoHeight()F
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method protected getPeekPromoHeightPeekingPx()F
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method protected getPeekedHeight()F
    .locals 3

    .prologue
    .line 830
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPeekPromoHeightPeekingPx()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getProgressBarCompletion()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarCompletion:I

    return v0
.end method

.method public getProgressBarHeight()F
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarHeight:F

    return v0
.end method

.method public getProgressBarOpacity()F
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarOpacity:F

    return v0
.end method

.method protected getPromoContentHeight()F
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoContentHeightPx:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPromoHeight()F
    .locals 2

    .prologue
    .line 696
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPromoHeightPx()F
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoHeightPx:F

    return v0
.end method

.method public getPromoOpacity()F
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoOpacity:F

    return v0
.end method

.method public getPromoVisible()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoVisible:Z

    return v0
.end method

.method protected getPromoYPx()F
    .locals 2

    .prologue
    .line 724
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getOffsetY()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarContainerHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTabHeight()F
    .locals 3

    .prologue
    .line 354
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mLayoutHeight:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getToolbarHeight()F

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTopControlsOffsetDp()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected getThresholdToNextState()F
    .locals 1

    .prologue
    .line 886
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getToolbarHeight()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mToolbarHeight:F

    return v0
.end method

.method protected abstract getTopControlsOffsetDp()F
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mMaximumWidth:F

    return v0
.end method

.method protected hidePromoView()V
    .locals 2

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsSearchPromoViewVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isPromoVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->setVisibility(I)V

    .line 1514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsSearchPromoViewVisible:Z

    goto :goto_0
.end method

.method protected initializeUiState()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsShowing:Z

    .line 862
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    .line 864
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getControlContainerHeightResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mToolbarHeight:F

    .line 867
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->overlay_panel_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    .line 869
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->toolbar_height_no_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightMaximized:F

    .line 871
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightMaximized:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightExpanded:F

    .line 873
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarMarginSide:F

    .line 874
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarHeight:F

    .line 875
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarBorderHeight:F

    .line 878
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeight:F

    .line 879
    return-void
.end method

.method public isBarBorderVisible()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsBarBorderVisible:Z

    return v0
.end method

.method protected isFullWidthSizePanel()Z
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOverrideIsFullWidthSizePanelForTesting:Z

    if-eqz v0, :cond_0

    .line 271
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsFullWidthSizePanelForTesting:Z

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getFullscreenWidth()F

    move-result v0

    const/high16 v1, 0x442a0000    # 680.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaximized()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsMaximized:Z

    return v0
.end method

.method protected isNarrowSizePanelSupported()Z
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    const/high16 v1, 0x442a0000    # 680.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelOpened()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mHeight:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressBarVisible()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsProgressBarVisible:Z

    return v0
.end method

.method protected isPromoVisible()Z
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsShowing:Z

    return v0
.end method

.method protected isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
.end method

.method public onPromoButtonClick(Z)V
    .locals 2

    .prologue
    .line 1395
    if-eqz p1, :cond_0

    .line 1396
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->animatePromoAcceptance()V

    .line 1405
    :goto_0
    return-void

    .line 1398
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->hidePromoView()V

    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setPreferenceState(Z)V

    .line 1403
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->OPTOUT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0
.end method

.method public onPromoPreferenceClick()V
    .locals 2

    .prologue
    .line 1378
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1385
    return-void
.end method

.method public onSizeChanged(FF)V
    .locals 2

    .prologue
    .line 239
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mLayoutWidth:F

    .line 240
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mLayoutHeight:F

    .line 242
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateOverlayPanelWidth()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mMaximumWidth:F

    .line 243
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mMaximumHeight:F

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPanelState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPanelState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setPanelHeight(F)V

    .line 250
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateOverlayPanelX()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetX:F

    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateOverlayPanelY()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetY:F

    .line 253
    :cond_0
    return-void
.end method

.method protected setClampedPanelHeight(F)V
    .locals 2

    .prologue
    .line 937
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getMaximumSupportedState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 940
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setPanelHeight(F)V

    .line 941
    return-void
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContainerView:Landroid/view/ViewGroup;

    .line 1370
    return-void
.end method

.method public setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 3

    .prologue
    .line 1355
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    .line 1357
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    sget v1, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_promo:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->getResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 1361
    :cond_0
    return-void
.end method

.method public setHeightForTesting(F)V
    .locals 0

    .prologue
    .line 403
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mHeight:F

    .line 404
    return-void
.end method

.method public setIsFullWidthSizePanelForTesting(Z)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOverrideIsFullWidthSizePanelForTesting:Z

    .line 263
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsFullWidthSizePanelForTesting:Z

    .line 264
    return-void
.end method

.method public setMaximizedForTesting(Z)V
    .locals 0

    .prologue
    .line 421
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsMaximized:Z

    .line 422
    return-void
.end method

.method public setOffsetYForTesting(F)V
    .locals 0

    .prologue
    .line 412
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mOffsetY:F

    .line 413
    return-void
.end method

.method protected setPanelHeight(F)V
    .locals 1

    .prologue
    .line 951
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->hidePromoView()V

    .line 955
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePanelForHeight(F)V

    .line 956
    return-void
.end method

.method protected setPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_1

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsShowing:Z

    .line 746
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 755
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPanelState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 756
    return-void

    .line 747
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPromoYPx()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->showPromoViewAtYPosition(F)V

    goto :goto_0
.end method

.method public setPreferenceState(Z)V
    .locals 0

    .prologue
    .line 1391
    return-void
.end method

.method protected setProgressBarCompletion(I)V
    .locals 0

    .prologue
    .line 666
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarCompletion:I

    .line 667
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .prologue
    .line 638
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsProgressBarVisible:Z

    .line 639
    return-void
.end method

.method public setPromoContentHeightPx(F)V
    .locals 0

    .prologue
    .line 689
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoContentHeightPx:F

    .line 690
    return-void
.end method

.method protected setPromoVisibilityForOptInAnimation(F)V
    .locals 0

    .prologue
    .line 1523
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePromoVisibility(F)V

    .line 1524
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updateBarShadow()V

    .line 1525
    return-void
.end method

.method public setSearchBarBorderHeight(F)V
    .locals 0

    .prologue
    .line 437
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarBorderHeight:F

    .line 438
    return-void
.end method

.method public setSearchBarHeightForTesting(F)V
    .locals 0

    .prologue
    .line 429
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeight:F

    .line 430
    return-void
.end method

.method protected startShowing()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsShowing:Z

    .line 339
    return-void
.end method

.method protected updateBasePageSelectionYPx(F)V
    .locals 0

    .prologue
    .line 1285
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageSelectionYPx:F

    .line 1286
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updateBasePageTargetY()V

    .line 1287
    return-void
.end method

.method protected updateBasePageTargetY()V
    .locals 1

    .prologue
    .line 1294
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->calculateBasePageTargetY(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageTargetY:F

    .line 1295
    return-void
.end method

.method protected updatePanelForCloseOrPeek(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1066
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePromoVisibility(F)V

    .line 1069
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageY:F

    .line 1072
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageBrightness:F

    .line 1075
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeight:F

    .line 1078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsBarBorderVisible:Z

    .line 1081
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mArrowIconOpacity:F

    .line 1084
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconOpacity:F

    .line 1087
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarOpacity:F

    .line 1090
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updateBarShadow()V

    .line 1091
    return-void
.end method

.method protected updatePanelForExpansion(F)V
    .locals 5

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1101
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePromoVisibility(F)V

    .line 1104
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBasePageTargetY()F

    move-result v0

    invoke-static {v3, v0, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    .line 1108
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageY:F

    .line 1111
    const v0, 0x3f333333    # 0.7f

    invoke-static {v4, v0, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    .line 1115
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageBrightness:F

    .line 1118
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeightPeeking:F

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarHeightExpanded()F

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 1122
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeight:F

    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsBarBorderVisible:Z

    .line 1130
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 1131
    sub-float v1, p1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v2

    .line 1134
    invoke-static {v4, v3, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mArrowIconOpacity:F

    .line 1140
    invoke-static {v3, v4, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconOpacity:F

    .line 1146
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    .line 1147
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPxToDp:F

    div-float/2addr v1, v2

    .line 1148
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mHeight:F

    sub-float v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1151
    div-float/2addr v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    .line 1152
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarOpacity:F

    .line 1155
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updateBarShadow()V

    .line 1156
    return-void
.end method

.method protected updatePanelForMaximization(F)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1166
    sub-float v0, v2, p1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updatePromoVisibility(F)V

    .line 1168
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v3

    .line 1171
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBasePageTargetY()F

    move-result v0

    .line 1172
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBasePageTargetY()F

    move-result v4

    invoke-static {v0, v4, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageY:F

    .line 1178
    if-eqz v3, :cond_1

    const v0, 0x3f333333    # 0.7f

    .line 1180
    :goto_1
    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v0, v4, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBasePageBrightness:F

    .line 1186
    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarHeightExpanded()F

    move-result v0

    .line 1188
    :goto_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarHeightMaximized()F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mBarHeight:F

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mIsBarBorderVisible:Z

    .line 1197
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mArrowIconOpacity:F

    .line 1200
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mCloseIconOpacity:F

    .line 1203
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mProgressBarOpacity:F

    .line 1206
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->updateBarShadow()V

    .line 1207
    return-void

    :cond_0
    move v0, v1

    .line 1171
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1178
    goto :goto_1

    .line 1186
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarHeightPeeking()F

    move-result v0

    goto :goto_2
.end method

.method protected updatePromoLayout()V
    .locals 2

    .prologue
    .line 1467
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getMaximumWidthPx()I

    move-result v0

    .line 1470
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isFullWidthSizePanel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1471
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1472
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->requestLayout()V

    .line 1475
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mPromoView:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->getHeightForGivenWidth(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setPromoContentHeightPx(F)V

    .line 1476
    return-void
.end method
