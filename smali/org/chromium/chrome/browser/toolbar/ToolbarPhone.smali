.class public Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;
.super Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
.source "ToolbarPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lorg/chromium/chrome/browser/compositor/Invalidator$Client;
.implements Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LOCATION_BAR_TRANSPARENT_BACKGROUND_ALPHA:I = 0x33

.field public static final URL_FOCUS_CHANGE_ANIMATION_DURATION_MS:I = 0xfa


# instance fields
.field private mAnimateNormalToolbar:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private final mBackgroundOverlayBounds:Landroid/graphics/Rect;

.field private mBrandColorTransitionActive:Z

.field private mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

.field private final mBrowsingModeViews:Ljava/util/Set;

.field private mClipRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private final mDarkModeDefaultColor:I

.field private mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

.field private mDelayingTabSwitcherAnimation:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private mDisableLocationBarRelayout:Z

.field private mForceDrawLocationBarBackground:Z

.field private mForceTextureCapture:Z

.field private mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mIsHomeButtonEnabled:Z

.field private mIsInTabSwitcherMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private mIsOverlayTabStackDrawableLight:Z

.field private mLayoutLocationBarInFocusedMode:Z

.field private mLayoutUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

.field private mLightDrawablesUsedForLastTextureCapture:Z

.field private final mLightModeDefaultColor:I

.field private mLocationBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mLocationBarBackgroundOffset:Landroid/graphics/Rect;

.field private final mLocationBarInsets:I

.field private mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

.field private mNewTabListener:Landroid/view/View$OnClickListener;

.field private final mNtpSearchBoxOriginalBounds:Landroid/graphics/Rect;

.field private mNtpSearchBoxScrollPercent:F

.field private final mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

.field private mOverlayDrawablesVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field private mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

.field private mPreTextureCaptureAlpha:F

.field private final mProgressBackBackgroundColor:I

.field private final mProgressBackBackgroundColorWhite:I

.field private mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mReturnButtonListener:Landroid/view/View$OnClickListener;

.field private mTabSwitcherAnimationBgOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mTabSwitcherAnimationMenuBadgeDarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabSwitcherAnimationMenuBadgeLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

.field private mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

.field private mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

.field private mTabSwitcherListener:Landroid/view/View$OnClickListener;

.field private mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

.field private mTabSwitcherModePercent:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private final mTabSwitcherModePercentProperty:Landroid/util/Property;

.field private final mTabSwitcherModeViews:Ljava/util/List;

.field private mTextureCaptureMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private mToggleTabStackButton:Landroid/widget/ImageView;

.field private mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

.field private mToolbarButtonsContainer:Landroid/view/ViewGroup;

.field private mToolbarShadow:Landroid/widget/ImageView;

.field private final mToolbarSidePadding:I

.field private mUIAnimatingTabSwitcherTransition:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private mUnfocusedLocationBarLayoutLeft:I

.field private mUnfocusedLocationBarLayoutWidth:I

.field private mUnfocusedLocationBarUsesTransparentBg:Z

.field private mUrlActionsContainer:Landroid/view/View;

.field private mUrlBackgroundAlpha:I

.field private final mUrlBackgroundPadding:Landroid/graphics/Rect;

.field private mUrlBar:Landroid/widget/TextView;

.field private mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

.field private mUrlExpansionPercent:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private mUrlFocusChangeInProgress:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private mUrlFocusChangePercent:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field private final mUrlFocusChangePercentProperty:Landroid/util/Property;

.field private mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

.field private final mUrlViewportBounds:Landroid/graphics/Rect;

.field private mUseLightDrawablesForTextureCapture:Z

.field private mUseLightToolbarDrawables:Z

.field private mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

.field private mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeViews:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F

    .line 172
    const/16 v0, 0xff

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 173
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBackgroundOverlayBounds:Landroid/graphics/Rect;

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxOriginalBounds:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    .line 214
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPreTextureCaptureAlpha:F

    .line 225
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$1;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercentProperty:Landroid/util/Property;

    .line 238
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercentProperty:Landroid/util/Property;

    .line 259
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->toolbar_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    .line 262
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->location_bar_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->location_bar_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarInsets:I

    .line 264
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->progress_bar_background:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mProgressBackBackgroundColor:I

    .line 266
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->progress_bar_background_white:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mProgressBackBackgroundColorWhite:I

    .line 268
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightModeDefaultColor:I

    .line 270
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDarkModeDefaultColor:I

    .line 272
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;F)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setUrlFocusChangePercent(F)V

    return-void
.end method

.method static synthetic access$1002(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutLocationBarInFocusedMode:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    return p1
.end method

.method static synthetic access$1302(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    return p1
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateToolbarBackground(I)V

    return-void
.end method

.method static synthetic access$1502(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionActive:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpAnimationState()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;F)F
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateViewsForTabSwitcherMode(Z)V

    return-void
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateShadowVisibility(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDisableLocationBarRelayout:Z

    return p1
.end method

.method private buildUrlScrollProperty(Landroid/view/View;Z)Landroid/util/Property;
    .locals 6

    .prologue
    .line 1552
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;

    const-class v2, Ljava/lang/Integer;

    const-string/jumbo v3, "scrollX"

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;Landroid/view/View;Z)V

    return-object v0
.end method

.method private computeVisualState(Z)Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;
    .locals 1

    .prologue
    .line 1939
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->TAB_SWITCHER_INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 1944
    :goto_0
    return-object v0

    .line 1940
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->TAB_SWITCHER_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    goto :goto_0

    .line 1941
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    goto :goto_0

    .line 1942
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    goto :goto_0

    .line 1943
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isUsingBrandColor()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    goto :goto_0

    .line 1944
    :cond_4
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    goto :goto_0
.end method

.method private createEnterTabSwitcherModeAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 1337
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercentProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1339
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1340
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1341
    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$5;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1351
    return-object v0
.end method

.method private createExitTabSwitcherAnimation(Z)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 1356
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercentProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1358
    if-eqz p1, :cond_0

    const-wide/16 v0, 0xc8

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1361
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1362
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$6;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$6;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1369
    return-object v2

    .line 1358
    :cond_0
    const-wide/16 v0, 0x64

    goto :goto_0
.end method

.method private createPostExitTabSwitcherAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 1373
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1375
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1376
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1377
    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1396
    return-object v0
.end method

.method private drawLocationBar(Landroid/graphics/Canvas;J)Z
    .locals 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1112
    const/4 v0, 0x0

    .line 1118
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-eqz v1, :cond_5

    .line 1119
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1120
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 1121
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_7

    .line 1124
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getAlpha()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1133
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1135
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceDrawLocationBarBackground:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-nez v0, :cond_3

    .line 1137
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1142
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1145
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 1147
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 1154
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    .line 1155
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutLeft:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getViewBoundsLeftOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1157
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getViewBoundsRightOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutWidth:I

    sub-int/2addr v3, v4

    .line 1160
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    sub-float v4, v6, v4

    .line 1161
    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 1162
    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    .line 1165
    :cond_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1167
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 1170
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1173
    const/4 v0, 0x1

    .line 1176
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-super {p0, p1, v1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 1178
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1179
    :cond_6
    return v1

    .line 1126
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isUsingBrandColor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionActive:Z

    if-nez v1, :cond_1

    .line 1128
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarUsesTransparentBg:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x33

    .line 1130
    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    rsub-int v2, v0, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto/16 :goto_0

    .line 1128
    :cond_8
    const/16 v0, 0xff

    goto :goto_1
.end method

.method private drawTabSwitcherAnimationOverlay(Landroid/graphics/Canvas;F)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 946
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isNativeLibraryReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 948
    :cond_0
    sub-float v0, v7, p2

    .line 949
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 951
    neg-float v2, p2

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBackgroundOverlayBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 952
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBackgroundOverlayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 955
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_1

    .line 956
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getAlpha()F

    move-result v2

    .line 957
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    mul-float v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 958
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p1, v3, v4, v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 959
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 961
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_2

    .line 963
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getAlpha()F

    move-result v2

    .line 964
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    mul-float v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 965
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p1, v3, v4, v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 966
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 970
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getAlpha()F

    move-result v2

    .line 971
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    mul-float/2addr v0, v2

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setAlpha(F)V

    .line 973
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    .line 974
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, p1, v0, v4, v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 976
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setAlpha(F)V

    .line 979
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->translateCanvasToView(Landroid/view/View;Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 981
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_4

    .line 984
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 985
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-static {v0, v2, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->translateCanvasToView(Landroid/view/View;Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 987
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 988
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 989
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 992
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 993
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    .line 996
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 997
    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 999
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->setAlpha(I)V

    .line 1000
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1005
    :cond_4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mShowMenuBadge:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_5

    .line 1007
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1011
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-static {v0, v2, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->translateCanvasToView(Landroid/view/View;Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1012
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1013
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightDrawablesForTextureCapture:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightModeDefaultColor:I

    .line 1016
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1017
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1021
    :cond_5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightDrawablesForTextureCapture:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1024
    :goto_2
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mShowMenuBadge:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_6

    .line 1025
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1029
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-static {v2, v3, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->translateCanvasToView(Landroid/view/View;Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1030
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1034
    :cond_6
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightDrawablesForTextureCapture:Z

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightDrawablesUsedForLastTextureCapture:Z

    .line 1036
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1013
    :cond_7
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDarkModeDefaultColor:I

    goto :goto_1

    .line 1021
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeDarkDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private drawTabSwitcherFadeAnimation(ZF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 931
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAlpha(F)V

    .line 932
    if-eqz p1, :cond_2

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    .line 937
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 938
    :cond_1
    return-void

    .line 934
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 935
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private enableTabSwitchingResources()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 378
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void
.end method

.method private getBoundsAfterAccountingForLeftButton()I
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 607
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    .line 608
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 609
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getMeasuredWidth()I

    move-result v0

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 611
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getToolbarColorForVisualState(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 641
    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$13;->$SwitchMap$org$chromium$chrome$browser$toolbar$ToolbarPhone$VisualState:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 654
    sget-boolean v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 643
    :pswitch_0
    const/4 v0, 0x0

    .line 655
    :goto_0
    return v0

    .line 645
    :pswitch_1
    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    .line 647
    :pswitch_2
    sget v1, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    .line 649
    :pswitch_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v0

    goto :goto_0

    .line 652
    :pswitch_4
    sget v1, Lorg/chromium/chrome/R$color;->tab_switcher_background:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    .line 655
    :cond_0
    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private getViewBoundsLeftOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I
    .locals 2

    .prologue
    .line 596
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne p1, v0, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    .line 598
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 602
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getBoundsAfterAccountingForLeftButton()I

    move-result v0

    goto :goto_0
.end method

.method private getViewBoundsRightOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I
    .locals 2

    .prologue
    .line 619
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne p1, v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMeasuredWidth()I

    move-result v0

    .line 626
    :goto_0
    return v0

    .line 621
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getBoundsAfterAccountingForLeftButton()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 624
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 626
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMeasuredWidth()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private hideTabSwitchingResources()V
    .locals 2

    .prologue
    .line 350
    sget v0, Lorg/chromium/chrome/R$id;->tab_switcher_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 351
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    return-void
.end method

.method private inflateTabSwitchingResources()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, -0x80000000

    .line 321
    sget v0, Lorg/chromium/chrome/R$id;->tab_switcher_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    .line 322
    sget v0, Lorg/chromium/chrome/R$id;->new_tab_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    .line 324
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 325
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 326
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->createTabSwitcherDrawable(Landroid/content/res/Resources;Z)Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    .line 328
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->createTabSwitcherDrawable(Landroid/content/res/Resources;Z)Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeViews:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 338
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 339
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getFrameLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 347
    return-void
.end method

.method private isLocationBarShownInNTP()Z
    .locals 1

    .prologue
    .line 1925
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 1926
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReturnButtonVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2152
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v1

    .line 2153
    const-string/jumbo v2, "Basil"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Chive"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2159
    :cond_0
    :goto_0
    return v0

    .line 2158
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 2159
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isAllowedToReturnToExternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTabSwitcherAnimationRunning()Z
    .locals 1

    .prologue
    .line 1415
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUIAnimatingTabSwitcherTransition:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

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

.method private static isVisualStateValidForBrandColorTransition(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)Z
    .locals 1

    .prologue
    .line 1819
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutLocationBar(I)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 549
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getFrameLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 554
    const/16 v0, 0x33

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 561
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUnfocusedLocationBarLayoutParams()V

    .line 563
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutLocationBarInFocusedMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne v0, v2, :cond_4

    :cond_0
    move v0, v1

    move v2, v1

    .line 565
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 566
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 567
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getFirstViewVisibleWhenFocused()Landroid/view/View;

    move-result-object v6

    if-eq v3, v6, :cond_2

    .line 568
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 569
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 565
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :cond_2
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    add-int/2addr v2, v0

    .line 573
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {v3}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 574
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    .line 584
    :goto_1
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v3, :cond_5

    move v3, v4

    :goto_2
    or-int/lit8 v3, v3, 0x0

    .line 585
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 587
    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v0, v2, :cond_6

    :goto_3
    or-int v1, v3, v4

    .line 588
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 590
    return v1

    .line 576
    :cond_3
    neg-int v0, v0

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    add-int/2addr v0, v3

    .line 578
    goto :goto_1

    .line 579
    :cond_4
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutWidth:I

    .line 580
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutLeft:I

    goto :goto_1

    :cond_5
    move v3, v1

    .line 584
    goto :goto_2

    :cond_6
    move v4, v1

    .line 587
    goto :goto_3
.end method

.method private populateUrlClearFocusingAnimatorSet(Ljava/util/List;)V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, 0xfa

    const-wide/16 v8, 0x64

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1625
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercentProperty:Landroid/util/Property;

    new-array v2, v6, [F

    aput v7, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1626
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1627
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1628
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButtonWrapper:Landroid/view/View;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v6, [F

    aput v7, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1631
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1632
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1633
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1634
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButtonWrapper:Landroid/view/View;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1637
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1638
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1639
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1640
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v6, [F

    aput v7, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1644
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1645
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1646
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1647
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1650
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1651
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1652
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1653
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    .line 1656
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1657
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1658
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getFirstViewVisibleWhenFocused()Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 1659
    sget-object v3, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1660
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1661
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1662
    sget-object v3, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1663
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1666
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    .line 1696
    :cond_2
    :goto_1
    return-void

    .line 1668
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showingQueryInTheOmnibox()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1673
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 1674
    if-eqz v2, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1676
    :cond_5
    if-eqz v2, :cond_6

    .line 1677
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    .line 1678
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1685
    :goto_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 1686
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-direct {p0, v4, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->buildUrlScrollProperty(Landroid/view/View;Z)Landroid/util/Property;

    move-result-object v2

    new-array v4, v6, [I

    aput v0, v4, v1

    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1690
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1691
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1692
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private populateUrlFocusingAnimatorSet(Ljava/util/List;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xfa

    const/4 v8, 0x0

    const-wide/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1580
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercentProperty:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1581
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1582
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1583
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1585
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1586
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1587
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getFirstViewVisibleWhenFocused()Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 1588
    sget-object v3, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    aput v8, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1589
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1590
    sget-object v3, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1591
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1594
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1595
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 1596
    const/16 v3, 0xa

    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(IZ)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 1599
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButtonWrapper:Landroid/view/View;

    sget-object v3, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v5, [F

    aput v0, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1601
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1602
    sget-object v3, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1603
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButtonWrapper:Landroid/view/View;

    sget-object v3, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    aput v8, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1606
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1607
    sget-object v3, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1608
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1611
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    sget-object v3, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v5, [F

    aput v0, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1613
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1614
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1615
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->ALPHA:Landroid/util/Property;

    new-array v3, v5, [F

    aput v8, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1618
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1619
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1620
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    :cond_1
    return-void
.end method

.method private removeTabSwitchingResources()V
    .locals 3

    .prologue
    .line 382
    sget v0, Lorg/chromium/chrome/R$id;->tab_switcher_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 383
    sget v1, Lorg/chromium/chrome/R$id;->new_tab_button:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    .line 384
    sget-boolean v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 385
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 386
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 387
    :cond_1
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->removeView(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method private resetNtpAnimationValues()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 838
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setTranslationY(F)V

    .line 839
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 841
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTranslationY(F)V

    .line 842
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTranslationY(F)V

    .line 844
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 845
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setAlpha(F)V

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceDrawLocationBarBackground:Z

    .line 847
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarUsesTransparentBg:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x33

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 852
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAncestorsShouldClipChildren(Z)V

    .line 853
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    .line 854
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlExpansionPercent()V

    .line 855
    return-void

    .line 847
    :cond_2
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private setAncestorsShouldClipChildren(Z)V
    .locals 2

    .prologue
    .line 920
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isLocationBarShownInNTP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    :cond_0
    return-void

    .line 922
    :cond_1
    :goto_0
    if-eqz p0, :cond_0

    .line 923
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 924
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const v1, 0x1020002

    if-eq v0, v1, :cond_0

    .line 926
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p0, v0

    goto :goto_0
.end method

.method private setTabSwitcherAnimationMenuBadgeDrawable()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 2134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->badge_update_dark:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 2136
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2137
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeDarkDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 2139
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->badge_update_light:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 2141
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2142
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeLightDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 2143
    return-void
.end method

.method private setTabSwitcherAnimationMenuDrawable()V
    .locals 3

    .prologue
    .line 2123
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->shouldShowMenuButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2131
    :goto_0
    return-void

    .line 2124
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_menu:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    .line 2126
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2127
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightModeDefaultColor:I

    :goto_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2130
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    goto :goto_0

    .line 2127
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDarkModeDefaultColor:I

    goto :goto_1
.end method

.method private setUrlFocusChangePercent(F)V
    .locals 0

    .prologue
    .line 757
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    .line 758
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlExpansionPercent()V

    .line 759
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlExpansionAnimation()V

    .line 760
    return-void
.end method

.method private setUseLightDrawablesForTextureCapture()V
    .locals 2

    .prologue
    .line 2164
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v0

    .line 2165
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightDrawablesForTextureCapture:Z

    .line 2168
    return-void

    .line 2165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static translateCanvasToView(Landroid/view/View;Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1055
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1056
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1062
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 1057
    :cond_2
    if-eq p1, p0, :cond_3

    .line 1058
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 1060
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View \'to\' was not a desendent of \'from\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1064
    :cond_3
    return-void
.end method

.method private triggerUrlFocusAnimation(Z)V
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1715
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    .line 1718
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    if-eqz p1, :cond_1

    .line 1720
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->populateUrlFocusingAnimatorSet(Ljava/util/List;)V

    .line 1724
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    .line 1725
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    .line 1728
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1759
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1760
    return-void

    .line 1722
    :cond_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->populateUrlClearFocusingAnimatorSet(Ljava/util/List;)V

    goto :goto_0
.end method

.method private unhideTabSwitchingResources()V
    .locals 2

    .prologue
    .line 356
    sget v0, Lorg/chromium/chrome/R$id;->tab_switcher_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    return-void
.end method

.method private updateNtpAnimationState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1870
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1871
    :goto_0
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    .line 1873
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->resetNtpAnimationValues()V

    .line 1874
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz v3, :cond_0

    .line 1875
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setSearchBoxScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;)V

    .line 1876
    iput-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    .line 1878
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    .line 1879
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isLocationBarShownInNTP()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1880
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisibleNewTabPage:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setSearchBoxScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;)V

    .line 1891
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->requestLayout()V

    .line 1893
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1870
    goto :goto_0

    .line 1882
    :cond_4
    if-eqz v0, :cond_2

    .line 1886
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    .line 1887
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    .line 1889
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->triggerUrlFocusAnimation(Z)V

    goto :goto_1
.end method

.method private updateNtpTransitionAnimation(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const v11, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 858
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-eqz v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 860
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAncestorsShouldClipChildren(Z)V

    .line 861
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 864
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    .line 865
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    sub-float v0, v2, v0

    .line 873
    :goto_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingTop()I

    move-result v5

    .line 874
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingBottom()I

    move-result v6

    .line 876
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxOriginalBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v7}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->getSearchBoxBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 877
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarInsets:I

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    int-to-float v3, v3

    div-float v7, v3, v12

    .line 880
    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    cmpl-float v3, v0, v4

    if-nez v3, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v8, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setTranslationY(F)V

    .line 883
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    if-nez v3, :cond_2

    .line 884
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    .line 886
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 887
    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 888
    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v8, v3}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTranslationY(F)V

    .line 889
    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v8, v3}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTranslationY(F)V

    .line 892
    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v9}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    neg-float v9, v7

    int-to-float v5, v5

    sub-float v5, v9, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iget-object v9, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    int-to-float v6, v6

    sub-float v6, v7, v6

    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarInsets:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v3, v8, v5, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 905
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_9

    .line 906
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setAlpha(F)V

    .line 913
    :goto_4
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_a

    const/16 v0, 0xff

    :goto_5
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 915
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    const/16 v0, 0xff

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 916
    :cond_3
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceDrawLocationBarBackground:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 860
    goto/16 :goto_1

    .line 869
    :cond_6
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_7

    move v0, v2

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    sub-float v0, v2, v0

    const v3, 0x3fd55571

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_2

    .line 880
    :cond_8
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxTransformedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v9}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getTop()I

    move-result v9

    sub-int/2addr v3, v9

    int-to-float v3, v3

    add-float/2addr v3, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto/16 :goto_3

    .line 908
    :cond_9
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    mul-float/2addr v0, v12

    sub-float v0, v2, v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setAlpha(F)V

    goto :goto_4

    .line 913
    :cond_a
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v0, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_5
.end method

.method private updateOverlayDrawables(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1505
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isNativeLibraryReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->computeVisualState(Z)Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    move-result-object v2

    .line 1508
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mOverlayDrawablesVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-eq v3, v2, :cond_2

    move v1, v0

    .line 1510
    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v4, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationBgOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1515
    :goto_1
    if-eqz v0, :cond_0

    .line 1517
    iput-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mOverlayDrawablesVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 1518
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationBgOverlay:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mOverlayDrawablesVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarColorForVisualState(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1521
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setTabSwitcherAnimationMenuDrawable()V

    .line 1522
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setUseLightDrawablesForTextureCapture()V

    .line 1524
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private updateShadowVisibility(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1930
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isTabSwitcherAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1931
    :goto_0
    if-eqz v1, :cond_2

    .line 1933
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1934
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1936
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 1930
    goto :goto_0

    .line 1931
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private updateToolbarBackground(I)V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 632
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->invalidate()V

    .line 633
    return-void
.end method

.method private updateToolbarBackground(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)V
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarColorForVisualState(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateToolbarBackground(I)V

    .line 637
    return-void
.end method

.method private updateUnfocusedLocationBarLayoutParams()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 500
    move v0, v1

    .line 501
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 502
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 503
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    if-eq v2, v3, :cond_0

    .line 504
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 505
    const/4 v1, 0x1

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getViewBoundsLeftOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v0

    .line 511
    if-nez v1, :cond_1

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    add-int/2addr v0, v1

    .line 512
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getViewBoundsRightOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v1

    .line 514
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->hasVisibleViewsAfterUrlBarWhenUnfocused()Z

    move-result v2

    if-nez v2, :cond_4

    .line 518
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {v2}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    add-int/2addr v0, v2

    move v4, v1

    move v1, v0

    move v0, v4

    .line 525
    :goto_1
    sub-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutWidth:I

    .line 526
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutLeft:I

    .line 527
    return-void

    .line 501
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_3
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarSidePadding:I

    sub-int/2addr v1, v2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_4
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method private updateUrlExpansionAnimation()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/high16 v7, 0x3f800000    # 1.0f

    .line 769
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isTabSwitcherAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackgroundOffset:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 773
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getFrameLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 775
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 776
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 778
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    sub-float v2, v7, v2

    .line 779
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {v3}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 780
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {v4}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 781
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutLeft:I

    iget v6, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutWidth:I

    add-int/2addr v5, v6

    add-int/2addr v0, v1

    sub-int v0, v5, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setTranslationX(F)V

    .line 794
    :goto_1
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-ne v3, v0, :cond_2

    .line 795
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlActionsContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 798
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setUrlFocusChangePercent(F)V

    .line 802
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_7

    const/4 v0, 0x4

    .line 803
    :goto_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 804
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v8, :cond_3

    .line 805
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 807
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v8, :cond_4

    .line 808
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 813
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->invalidate()V

    .line 814
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->invalidate()V

    .line 816
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    if-eqz v1, :cond_5

    .line 823
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setUrlFocusChangeAnimationPercent(F)V

    .line 826
    :cond_5
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isLocationBarShownInNTP()Z

    move-result v1

    if-nez v1, :cond_8

    .line 829
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->resetNtpAnimationValues()V

    goto/16 :goto_0

    .line 785
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarLayoutLeft:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setTranslationX(F)V

    .line 787
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlActionsContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    .line 802
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 833
    :cond_8
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpTransitionAnimation(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    goto/16 :goto_0
.end method

.method private updateUrlExpansionPercent()V
    .locals 2

    .prologue
    .line 763
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    .line 764
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 765
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 766
    :cond_1
    return-void
.end method

.method private updateUrlViewportBounds(Landroid/graphics/Rect;Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 719
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getViewBoundsLeftOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v0

    .line 720
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getViewBoundsRightOfLocationBar(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v1

    .line 722
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 723
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 724
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 725
    int-to-float v0, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 728
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 729
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 730
    int-to-float v2, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 731
    int-to-float v1, v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 740
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 747
    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 749
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 750
    return-void

    .line 747
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private updateViewsForTabSwitcherMode(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1422
    if-eqz p1, :cond_0

    move v4, v3

    .line 1423
    :goto_0
    if-eqz p1, :cond_1

    move v1, v2

    .line 1425
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1426
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    move v4, v2

    .line 1422
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1423
    goto :goto_1

    .line 1428
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1429
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1431
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mShowMenuBadge:Z

    if-eqz v0, :cond_4

    .line 1432
    if-nez p1, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setMenuButtonContentDescription(Z)V

    .line 1434
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v0

    if-nez p1, :cond_5

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isTabSwitcherAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setVisibility(I)V

    .line 1436
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    .line 1438
    return-void

    :cond_7
    move v0, v3

    .line 1432
    goto :goto_4
.end method

.method private updateVisualsForToolbarState(Z)V
    .locals 11

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x33

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1948
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v6

    .line 1950
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->computeVisualState(Z)Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    move-result-object v7

    .line 1957
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isVisualStateValidForBrandColorTransition(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isVisualStateValidForBrandColorTransition(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1963
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1966
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-eq v0, v7, :cond_5

    move v0, v1

    .line 1968
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v8

    .line 1969
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v9, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne v3, v9, :cond_4

    if-nez v0, :cond_4

    .line 1970
    invoke-static {v8}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v9

    .line 1972
    invoke-static {v8}, Lorg/chromium/chrome/browser/util/ColorUtils;->shouldUseOpaqueTextboxBackground(I)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    .line 1974
    :goto_2
    iget-boolean v10, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-ne v9, v10, :cond_3

    iget-boolean v9, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarUsesTransparentBg:Z

    if-eq v3, v9, :cond_7

    :cond_3
    move v0, v1

    .line 1985
    :cond_4
    :goto_3
    iput-object v7, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 1987
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateOverlayDrawables(Z)V

    .line 1988
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateShadowVisibility(Z)V

    .line 1989
    if-nez v0, :cond_8

    .line 1990
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne v0, v1, :cond_0

    .line 1991
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpTransitionAnimation(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1966
    goto :goto_1

    :cond_6
    move v3, v2

    .line 1972
    goto :goto_2

    .line 1979
    :cond_7
    sget-object v3, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateToolbarBackground(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)V

    .line 1980
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v3

    invoke-static {v8}, Lorg/chromium/chrome/browser/util/ColorUtils;->getLightProgressbarBackground(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setBackgroundColor(I)V

    goto :goto_3

    .line 1997
    :cond_8
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    .line 1998
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarUsesTransparentBg:Z

    .line 1999
    iput v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 2000
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mProgressBackBackgroundColor:I

    .line 2001
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateToolbarBackground(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)V

    .line 2002
    if-eqz p1, :cond_11

    .line 2003
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    .line 2004
    iput v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 2005
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mProgressBackBackgroundColorWhite:I

    .line 2021
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setBackgroundColor(I)V

    .line 2022
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-eqz v0, :cond_15

    sget v0, Lorg/chromium/chrome/R$color;->progress_bar_foreground_white:I

    :goto_5
    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    .line 2026
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setForegroundColor(I)V

    .line 2028
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 2029
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2031
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    if-eqz v0, :cond_a

    .line 2032
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_7
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 2037
    :cond_a
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->shouldShowMenuButton()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2038
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightModeTint:Landroid/content/res/ColorStateList;

    :goto_8
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 2040
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mShowMenuBadge:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    .line 2041
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAppMenuUpdateBadgeDrawable(Z)V

    .line 2044
    :cond_b
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightModeTint:Landroid/content/res/ColorStateList;

    .line 2045
    :goto_9
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isReturnButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 2046
    :cond_c
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsHomeButtonEnabled:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 2048
    :cond_d
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateVisualsForState()V

    .line 2051
    if-eqz v6, :cond_1a

    .line 2052
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v1, v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setPadding(IIII)V

    .line 2062
    :goto_a
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 2063
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpTransitionAnimation(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    .line 2067
    :cond_e
    if-eqz p1, :cond_f

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-virtual {v0, v6}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->setIsIncognito(Z)V

    .line 2069
    :cond_f
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v6, :cond_1b

    sget v0, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_new_incognito_tab:I

    :goto_b
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2072
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2074
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2077
    :cond_10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMenuButtonWrapper()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->shouldShowMenuButton()Z

    move-result v1

    if-eqz v1, :cond_1c

    :goto_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2006
    :cond_11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2007
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    .line 2008
    iput v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 2009
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mProgressBackBackgroundColorWhite:I

    goto/16 :goto_4

    .line 2010
    :cond_12
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v7, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne v3, v7, :cond_9

    .line 2011
    invoke-static {v8}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    .line 2013
    invoke-static {v8}, Lorg/chromium/chrome/browser/util/ColorUtils;->shouldUseOpaqueTextboxBackground(I)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_d
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarUsesTransparentBg:Z

    .line 2015
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUnfocusedLocationBarUsesTransparentBg:Z

    if-eqz v0, :cond_14

    move v0, v4

    :goto_e
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 2017
    invoke-static {v8}, Lorg/chromium/chrome/browser/util/ColorUtils;->getLightProgressbarBackground(I)I

    move-result v0

    goto/16 :goto_4

    :cond_13
    move v1, v2

    .line 2013
    goto :goto_d

    :cond_14
    move v0, v5

    .line 2015
    goto :goto_e

    .line 2022
    :cond_15
    sget v0, Lorg/chromium/chrome/R$color;->progress_bar_foreground:I

    goto/16 :goto_5

    .line 2029
    :cond_16
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    goto/16 :goto_6

    .line 2032
    :cond_17
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_7

    .line 2038
    :cond_18
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_8

    .line 2044
    :cond_19
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDarkModeTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_9

    .line 2055
    :cond_1a
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setPadding(IIII)V

    goto/16 :goto_a

    .line 2069
    :cond_1b
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_new_tab:I

    goto/16 :goto_b

    .line 2077
    :cond_1c
    const/16 v2, 0x8

    goto :goto_c
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 661
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 664
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 667
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-eqz v1, :cond_2

    .line 669
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v1, v2, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlViewportBounds(Landroid/graphics/Rect;Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;Z)V

    .line 672
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-eqz v1, :cond_4

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawTabSwitcherAnimationOverlay(Landroid/graphics/Canvas;F)V

    .line 700
    :cond_3
    :goto_0
    return-void

    .line 676
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_6

    .line 677
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    .line 681
    :cond_5
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mAnimateNormalToolbar:Z

    if-nez v1, :cond_6

    .line 682
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawTabSwitcherFadeAnimation(ZF)V

    .line 687
    :cond_6
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 689
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3

    .line 692
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mAnimateNormalToolbar:Z

    if-eqz v1, :cond_7

    .line 693
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F

    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawTabSwitcherAnimationOverlay(Landroid/graphics/Canvas;F)V

    .line 697
    :cond_7
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public doInvalidate()V
    .locals 0

    .prologue
    .line 1041
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->postInvalidateOnAnimation()V

    .line 1042
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1206
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1210
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1211
    :goto_0
    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1213
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1215
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1216
    if-eqz v0, :cond_2

    .line 1217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1221
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->postInvalidate()V

    .line 1223
    :cond_2
    return-void

    .line 1210
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1068
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->drawLocationBar(Landroid/graphics/Canvas;J)Z

    move-result v0

    .line 1108
    :cond_0
    :goto_0
    return v0

    .line 1071
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1074
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1075
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1081
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne p2, v0, :cond_7

    :cond_4
    move v0, v2

    :goto_1
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    xor-int v5, v0, v3

    .line 1084
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 1085
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1087
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_b

    .line 1088
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1089
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v3

    move v3, v0

    move v0, v2

    .line 1093
    :goto_2
    if-eqz v5, :cond_9

    .line 1094
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_3
    invoke-virtual {p1, v1, v4, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_5
    :goto_4
    move v1, v2

    .line 1106
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1107
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 1081
    goto :goto_1

    .line 1094
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 1099
    :cond_9
    if-eqz v0, :cond_a

    :goto_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1, v1, v4, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlViewportBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_b
    move v4, v3

    move v3, v0

    move v0, v1

    goto :goto_2
.end method

.method public finishAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1276
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    .line 1277
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1279
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    .line 1281
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1283
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    .line 1285
    :cond_1
    return-void
.end method

.method public finishLoadProgress(Z)V
    .locals 2

    .prologue
    .line 1268
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->finishLoadProgress(Z)V

    .line 1269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setTrailingTextVisible(Z)V

    .line 1272
    :cond_0
    return-void
.end method

.method getBackgroundDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public bridge synthetic getFirstDrawTime()J
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getFirstDrawTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    return-object v0
.end method

.method public getLocationBarContentRect(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 1289
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1290
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1291
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 1292
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 1293
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1295
    sget-object v4, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlViewportBounds(Landroid/graphics/Rect;Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;Z)V

    .line 1297
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v2

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1301
    return-void
.end method

.method getOverlayDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationBgOverlay:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public bridge synthetic getPositionRelativeToContainer(Landroid/view/View;[I)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getPositionRelativeToContainer(Landroid/view/View;[I)V

    return-void
.end method

.method public bridge synthetic getTabStripHeight()I
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getTabStripHeight()I

    move-result v0

    return v0
.end method

.method protected handleFindToolbarStateChange(Z)V
    .locals 2

    .prologue
    const/16 v1, 0xfa

    .line 1915
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setVisibility(I)V

    .line 1916
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 1917
    if-eqz p1, :cond_1

    .line 1918
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1922
    :goto_1
    return-void

    .line 1915
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1920
    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_1
.end method

.method public bridge synthetic initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    return-void
.end method

.method public isReadyForTextureCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1232
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceTextureCapture:Z

    if-eqz v1, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->urlHasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isShowingAppMenuUpdateBadge()Z
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->isShowingAppMenuUpdateBadge()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1190
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onAttachedToWindow()V

    .line 1191
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->toolbar_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    .line 1195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 1196
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->toolbar_shadow:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1199
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_1

    .line 453
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->cancelAppMenuUpdateBadgeAnimation()V

    .line 456
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 457
    const-string/jumbo v0, "MobileToolbarShowStackView"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    if-ne v0, p1, :cond_2

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 464
    const-string/jumbo v0, "MobileToolbarStackViewNewTab"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v0, "MobileNewTabOpened"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne v0, p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->openHomepage()V

    goto :goto_0
.end method

.method protected onDefaultSearchEngineChanged()V
    .locals 1

    .prologue
    .line 1897
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onDefaultSearchEngineChanged()V

    .line 1904
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->post(Ljava/lang/Runnable;)Z

    .line 1911
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onFinishInflate()V

    .line 277
    sget v0, Lorg/chromium/chrome/R$id;->location_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 279
    sget v0, Lorg/chromium/chrome/R$id;->toolbar_buttons:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarButtonsContainer:Landroid/view/ViewGroup;

    .line 281
    sget v0, Lorg/chromium/chrome/R$id;->return_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 282
    sget v0, Lorg/chromium/chrome/R$id;->home_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 284
    sget v0, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;

    .line 285
    sget v0, Lorg/chromium/chrome/R$id;->url_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    .line 287
    sget v0, Lorg/chromium/chrome/R$id;->url_action_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlActionsContainer:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarColorForVisualState(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 292
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarColorForVisualState(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationBgOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 295
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$drawable;->inset_textbox:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLocationBarBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setPadding(IIII)V

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 304
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->shouldShowMenuButton()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$dimen;->document_toolbar_menu_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->inflateTabSwitchingResources()V

    .line 317
    :goto_1
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setWillNotDraw(Z)V

    .line 318
    return-void

    .line 304
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 314
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->hideTabSwitchingResources()V

    goto :goto_1
.end method

.method protected onHomeButtonUpdate(Z)V
    .locals 0

    .prologue
    .line 1305
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsHomeButtonEnabled:Z

    .line 1306
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateButtonVisibility()V

    .line 1307
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->open_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->showAccessibilityToast(Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDisableLocationBarRelayout:Z

    if-nez v0, :cond_1

    .line 487
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onMeasure(II)V

    .line 489
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->layoutLocationBar(I)Z

    move-result v0

    .line 490
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangePercent:F

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setUrlFocusChangePercent(F)V

    .line 491
    :cond_0
    if-nez v0, :cond_2

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUnfocusedLocationBarLayoutParams()V

    .line 496
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onNativeLibraryReady()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNativeLibraryReady()V

    .line 396
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->onNativeLibraryReady()V

    .line 398
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabledInDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->unhideTabSwitchingResources()V

    .line 404
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->inflateTabSwitchingResources()V

    .line 409
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->enableTabSwitchingResources()V

    .line 412
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 430
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->onHomeButtonUpdate(Z)V

    .line 432
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    .line 433
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->removeTabSwitchingResources()V

    goto :goto_0
.end method

.method protected onNavigatedToDifferentPage()V
    .locals 2

    .prologue
    .line 1260
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNavigatedToDifferentPage()V

    .line 1261
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setTrailingTextVisible(Z)V

    .line 1264
    :cond_0
    return-void
.end method

.method public onNtpScrollChanged(F)V
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNtpSearchBoxScrollPercent:F

    .line 708
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlExpansionPercent()V

    .line 709
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlExpansionAnimation()V

    goto :goto_0
.end method

.method protected onPrimaryColorChanged(Z)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 1824
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onPrimaryColorChanged(Z)V

    .line 1825
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1826
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isVisualStateValidForBrandColorTransition(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1866
    :cond_1
    :goto_0
    return-void

    .line 1829
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    .line 1830
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v3

    .line 1831
    if-eq v2, v3, :cond_1

    .line 1832
    invoke-static {v3}, Lorg/chromium/chrome/browser/util/ColorUtils;->shouldUseOpaqueTextboxBackground(I)Z

    move-result v0

    .line 1833
    iget v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I

    .line 1834
    if-eqz v0, :cond_3

    const/16 v6, 0xff

    .line 1836
    :goto_1
    if-eq v5, v6, :cond_4

    move v4, v7

    .line 1837
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    .line 1839
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1840
    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;IIZII)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1857
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$11;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$11;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1864
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1865
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrandColorTransitionActive:Z

    goto :goto_0

    .line 1834
    :cond_3
    const/16 v6, 0x33

    goto :goto_1

    .line 1836
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1837
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1184
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBackgroundOverlayBounds:Landroid/graphics/Rect;

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarHeightWithoutShadow:I

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1185
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onSizeChanged(IIII)V

    .line 1186
    return-void
.end method

.method public onStateRestored()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1228
    :cond_0
    return-void
.end method

.method protected onTabContentViewChanged()V
    .locals 1

    .prologue
    .line 1806
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabContentViewChanged()V

    .line 1807
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpAnimationState()V

    .line 1808
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    .line 1809
    return-void
.end method

.method protected onTabOrModelChanged()V
    .locals 1

    .prologue
    .line 1813
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabOrModelChanged()V

    .line 1814
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpAnimationState()V

    .line 1815
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    .line 1816
    return-void
.end method

.method protected onTabSwitcherTransitionFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1485
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAlpha(F)V

    .line 1486
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mClipRect:Landroid/graphics/Rect;

    .line 1487
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUIAnimatingTabSwitcherTransition:Z

    .line 1488
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-eqz v1, :cond_1

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F

    .line 1490
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mAnimateNormalToolbar:Z

    if-nez v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->finishAnimations()V

    .line 1492
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    .line 1495
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayingTabSwitcherAnimation:Z

    if-eqz v0, :cond_2

    .line 1496
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayingTabSwitcherAnimation:Z

    .line 1497
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->createPostExitTabSwitcherAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    .line 1498
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1502
    :goto_1
    return-void

    .line 1488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1500
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateViewsForTabSwitcherMode(Z)V

    goto :goto_1
.end method

.method public onUrlFocusChange(Z)V
    .locals 2

    .prologue
    const/16 v1, 0xfa

    .line 1700
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onUrlFocusChange(Z)V

    .line 1702
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->triggerUrlFocusAnimation(Z)V

    .line 1704
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 1705
    if-eqz p1, :cond_0

    .line 1706
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1710
    :goto_0
    return-void

    .line 1708
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 1311
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onWindowVisibilityChanged(I)V

    .line 1312
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateButtonVisibility()V

    .line 1313
    return-void
.end method

.method public removeAppMenuUpdateBadge(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2111
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->removeAppMenuUpdateBadge(Z)V

    .line 2113
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2115
    iput-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 2116
    iput-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationMenuBadgeLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 2119
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->removeAppMenuUpdateBadge(Z)V

    .line 2120
    return-void
.end method

.method public bridge synthetic setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setContentAttached(Z)V
    .locals 1

    .prologue
    .line 1442
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V

    .line 1443
    return-void
.end method

.method public bridge synthetic setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setForceTextureCapture(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1241
    if-eqz p1, :cond_1

    .line 1242
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setUseLightDrawablesForTextureCapture()V

    .line 1244
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLightDrawablesUsedForLastTextureCapture:Z

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightDrawablesForTextureCapture:Z

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceTextureCapture:Z

    .line 1246
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceTextureCapture:Z

    .line 1250
    :goto_0
    return v0

    .line 1249
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mForceTextureCapture:Z

    goto :goto_0
.end method

.method public setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    .line 1256
    return-void
.end method

.method public setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabListener:Landroid/view/View$OnClickListener;

    .line 1541
    return-void
.end method

.method public setOnTabSwitcherClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherListener:Landroid/view/View$OnClickListener;

    .line 1536
    return-void
.end method

.method public bridge synthetic setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V

    return-void
.end method

.method public setReturnButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 2147
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButtonListener:Landroid/view/View$OnClickListener;

    .line 2148
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2149
    return-void
.end method

.method protected setTabSwitcherMode(ZZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1448
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-ne v0, p1, :cond_0

    .line 1481
    :goto_0
    return-void

    .line 1450
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->finishAnimations()V

    .line 1452
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayingTabSwitcherAnimation:Z

    .line 1454
    if-eqz p1, :cond_4

    .line 1455
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1457
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusLayoutAnimator:Landroid/animation/AnimatorSet;

    .line 1461
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->layoutLocationBar(I)Z

    .line 1462
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateUrlExpansionAnimation()V

    .line 1464
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mNewTabButton:Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton;->setEnabled(Z)V

    .line 1465
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateViewsForTabSwitcherMode(Z)V

    .line 1466
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->createEnterTabSwitcherModeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    .line 1474
    :goto_1
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mAnimateNormalToolbar:Z

    .line 1475
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    .line 1476
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1478
    :cond_2
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->finishAnimations()V

    .line 1480
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 1468
    :cond_4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayingTabSwitcherAnimation:Z

    if-nez v0, :cond_5

    .line 1469
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->createExitTabSwitcherAnimation(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;

    .line 1471
    :cond_5
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUIAnimatingTabSwitcherTransition:Z

    goto :goto_1
.end method

.method public setTextureCaptureMode(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1401
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1402
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    .line 1403
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTextureCaptureMode:Z

    if-eqz v0, :cond_1

    .line 1404
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToolbarShadow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1405
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getAlpha()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPreTextureCaptureAlpha:F

    .line 1406
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAlpha(F)V

    .line 1412
    :goto_0
    return-void

    .line 1408
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPreTextureCaptureAlpha:F

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAlpha(F)V

    .line 1409
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateShadowVisibility(Z)V

    .line 1410
    iput v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPreTextureCaptureAlpha:F

    goto :goto_0
.end method

.method public bridge synthetic setUrlBarHidden(Z)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setUrlBarHidden(Z)V

    return-void
.end method

.method public shouldIgnoreSwipeGesture()Z
    .locals 2

    .prologue
    .line 1545
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->shouldIgnoreSwipeGesture()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlExpansionPercent:F

    const/4 v1, 0x0

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

.method protected shouldShowMenuButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1766
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mVisualState:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    if-ne v1, v2, :cond_1

    .line 1768
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->shouldShowMenuButton()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAppMenuUpdateBadge()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2087
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->showAppMenuUpdateBadge()V

    .line 2090
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2095
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->finishAnimations()V

    .line 2096
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setTabSwitcherAnimationMenuBadgeDrawable()V

    .line 2099
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->shouldShowMenuButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2100
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    if-eqz v0, :cond_1

    .line 2101
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUseLightToolbarDrawables:Z

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAppMenuUpdateBadgeDrawable(Z)V

    .line 2103
    :cond_1
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->setAppMenuUpdateBadgeToVisible(Z)V

    .line 2106
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showAppMenuUpdateBadge(Z)V

    .line 2107
    return-void
.end method

.method public updateButtonVisibility()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1317
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isReturnButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1318
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->urlHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 1320
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1326
    :goto_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsHomeButtonEnabled:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isReturnButtonVisible()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 1327
    :goto_2
    if-eqz v0, :cond_6

    .line 1328
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->urlHasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1334
    :goto_3
    return-void

    :cond_3
    move v0, v1

    .line 1318
    goto :goto_0

    .line 1322
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 1323
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1326
    goto :goto_2

    .line 1331
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mBrowsingModeViews:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected updateTabCountVisuals(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1773
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mReturnButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 1774
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 1776
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 1802
    :cond_2
    :goto_0
    return-void

    .line 1778
    :cond_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    if-lez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1779
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_tabswitcher_toggle:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawableLight:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v3

    invoke-virtual {v0, p1, v3}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->updateForTabCount(IZ)V

    .line 1783
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherButtonDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v3

    invoke-virtual {v0, p1, v3}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->updateForTabCount(IZ)V

    .line 1785
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v0

    .line 1786
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsOverlayTabStackDrawableLight:Z

    if-eq v3, v0, :cond_5

    .line 1788
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->createTabSwitcherDrawable(Landroid/content/res/Resources;Z)Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    .line 1791
    new-array v1, v1, [I

    const v3, 0x101009e

    aput v3, v1, v2

    .line 1792
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->setState([I)Z

    .line 1793
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1795
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsOverlayTabStackDrawableLight:Z

    .line 1798
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    if-eqz v0, :cond_2

    .line 1799
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherAnimationTabStackDrawable:Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->updateForTabCount(IZ)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1778
    goto :goto_1
.end method
