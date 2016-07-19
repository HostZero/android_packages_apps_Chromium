.class public Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;
.super Ljava/lang/Object;
.source "StripLayoutHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ID_CLOSE_ALL_TABS:I

.field private static final TAN_OF_REORDER_ANGLE_START_THRESHOLD:F


# instance fields
.field private mBrightness:F

.field private mCachedTabWidth:F

.field private mContext:Landroid/content/Context;

.field private mHeight:F

.field private mInReorderMode:Z

.field private final mIncognito:Z

.field private mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

.field private mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

.field private mLastReorderScrollTime:J

.field private mLastReorderX:F

.field private mLastSpinnerUpdate:J

.field private mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

.field private mLeftMargin:F

.field private final mMaxTabWidth:F

.field private mMinScrollOffset:F

.field private final mMinTabWidth:F

.field private mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field private final mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

.field private mNewTabButtonWidth:F

.field private final mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

.field private final mReorderMoveStartThreshold:F

.field private mReorderState:I

.field private mRightMargin:F

.field private mScrollOffset:I

.field private mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

.field private mStripStacker:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;

.field private final mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

.field private mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

.field private mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

.field private mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

.field private mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private final mTabLoadTrackerHost:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

.field private final mTabMenu:Landroid/widget/ListPopupWindow;

.field private final mTabOverlapWidth:F

.field private final mTabStackWidth:F

.field private final mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->$assertionsDisabled:Z

    .line 63
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->TAN_OF_REORDER_ANGLE_START_THRESHOLD:F

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v4, 0x42680000    # 58.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StaticStripStacker;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StaticStripStacker;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripStacker:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;

    .line 104
    new-array v0, v7, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 105
    new-array v0, v7, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 106
    new-array v0, v7, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 107
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    .line 108
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$TabLoadTrackerCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$TabLoadTrackerCallbackImpl;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabLoadTrackerHost:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    .line 129
    iput v7, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    .line 130
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    .line 158
    iput v5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabStackWidth:F

    .line 159
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    .line 160
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    .line 162
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    .line 166
    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    .line 167
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    :cond_1
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    .line 168
    const/high16 v0, 0x433e0000    # 190.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinTabWidth:F

    .line 169
    const v0, 0x43848000    # 265.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMaxTabWidth:F

    .line 170
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderMoveStartThreshold:F

    .line 171
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    .line 172
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    .line 173
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    const/high16 v1, 0x42020000    # 32.5f

    invoke-direct {v0, p1, v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_tab_normal:I

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_tab_pressed:I

    sget v3, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_incognito_tab_normal:I

    sget v4, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_incognito_tab_pressed:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setResources(IIII)V

    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setIncognito(Z)V

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setY(F)V

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setClickSlop(F)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_new_tab:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_new_incognito_tab:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setAccessibilityDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    .line 187
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mIncognito:Z

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mBrightness:F

    .line 191
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    .line 192
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    sget v4, Lorg/chromium/chrome/R$layout;->bookmark_popup_item:I

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mIncognito:Z

    if-nez v0, :cond_3

    sget v0, Lorg/chromium/chrome/R$string;->menu_close_all_tabs:I

    :goto_1
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->menu_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 209
    return-void

    .line 166
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    goto/16 :goto_0

    .line 192
    :cond_3
    sget v0, Lorg/chromium/chrome/R$string;->menu_close_all_incognito_tabs:I

    goto :goto_1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabWidth(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    return-object v0
.end method

.method private static buildTabClosedAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
    .locals 10

    .prologue
    .line 1490
    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->Y_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getOffsetY()F

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getHeight()F

    move-result v3

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getLinearInterpolator()Landroid/view/animation/LinearInterpolator;

    move-result-object v9

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    return-object v0
.end method

.method private static buildTabCreatedAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
    .locals 10

    .prologue
    .line 1485
    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->Y_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getLinearInterpolator()Landroid/view/animation/LinearInterpolator;

    move-result-object v9

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    return-object v0
.end method

.method private static buildTabMoveAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
    .locals 10

    .prologue
    .line 1503
    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->X_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    const/4 v3, 0x0

    const-wide/16 v4, 0x7d

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getLinearInterpolator()Landroid/view/animation/LinearInterpolator;

    move-result-object v9

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    return-object v0
.end method

.method private static buildTabResizeAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
    .locals 10

    .prologue
    .line 1497
    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->WIDTH:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v2

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getLinearInterpolator()Landroid/view/animation/LinearInterpolator;

    move-result-object v9

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    return-object v0
.end method

.method private calculateOffsetToMakeTabVisible(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;ZZZ)F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1193
    if-nez p1, :cond_0

    move v0, v2

    .line 1229
    :goto_0
    return v0

    .line 1195
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v3

    .line 1196
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v4

    .line 1199
    if-ne v3, v4, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    .line 1202
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float v1, v0, v1

    .line 1203
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float v5, v0, v5

    .line 1209
    neg-int v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 1210
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    .line 1214
    if-ge v4, v3, :cond_3

    .line 1215
    sub-float/2addr v1, v5

    .line 1222
    :cond_2
    :goto_1
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_4

    if-eqz p3, :cond_4

    .line 1223
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1216
    :cond_3
    if-le v4, v3, :cond_2

    .line 1217
    add-float/2addr v0, v5

    goto :goto_1

    .line 1224
    :cond_4
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    if-eqz p4, :cond_5

    .line 1225
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1229
    goto :goto_0
.end method

.method private cancelAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;)V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->cancel(Ljava/lang/Object;Ljava/lang/Enum;)V

    goto :goto_0
.end method

.method private computeAndUpdateTabOrders(Z)V
    .locals 5

    .prologue
    .line 894
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    .line 895
    new-array v3, v2, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 897
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 898
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    .line 899
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    :goto_1
    aput-object v0, v3, v1

    .line 901
    aget-object v0, v3, v1

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setAccessibilityDescription(Ljava/lang/String;)V

    .line 897
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 900
    :cond_0
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->createStripTab(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    goto :goto_1

    .line 904
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    .line 905
    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 907
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    if-eq v1, v0, :cond_2

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resizeTabStrip(Z)V

    .line 909
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateVisualTabOrdering()V

    .line 910
    return-void
.end method

.method private computeAndUpdateTabWidth(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 965
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->removeMessages(I)V

    .line 967
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 970
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float/2addr v2, v3

    .line 973
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 976
    add-float/2addr v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 979
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinTabWidth:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMaxTabWidth:F

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    move v0, v1

    .line 982
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 983
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    .line 984
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isDying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 987
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v3, v3, v0

    sget-object v4, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->WIDTH:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-direct {p0, v3, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;)V

    .line 989
    if-eqz p1, :cond_1

    .line 990
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->buildTabResizeAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V

    .line 982
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setWidth(F)V

    goto :goto_1

    .line 995
    :cond_2
    return-void
.end method

.method private computeTabInitialPositions()V
    .locals 6

    .prologue
    .line 1040
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    add-float/2addr v0, v1

    .line 1046
    :goto_0
    const/4 v1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1047
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    .line 1048
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setIdealX(F)V

    .line 1049
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidthWeight()F

    move-result v2

    mul-float/2addr v2, v3

    .line 1050
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v2

    .line 1051
    add-float/2addr v1, v2

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1043
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1053
    :cond_1
    return-void
.end method

.method private computeTabOffsetHelper()V
    .locals 12

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v3

    .line 1060
    if-ltz v3, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v0, v0, v3

    .line 1061
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v0

    .line 1062
    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabStackWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float v6, v0, v1

    .line 1064
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 1065
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v7, v1, v0

    .line 1067
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getIdealX()F

    move-result v8

    .line 1071
    if-ge v0, v3, :cond_6

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1075
    :goto_3
    if-lt v0, v3, :cond_7

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    const/4 v4, 0x4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1080
    :goto_4
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    move v11, v2

    move v2, v1

    move v1, v11

    .line 1088
    :cond_0
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabStackWidth:F

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    add-float/2addr v4, v2

    .line 1089
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabStackWidth:F

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float v1, v2, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float/2addr v1, v2

    .line 1091
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getOffsetX()F

    move-result v2

    add-float/2addr v2, v8

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v5

    sub-float v5, v1, v5

    invoke-static {v2, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v9

    .line 1095
    invoke-virtual {v7, v9}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setDrawX(F)V

    .line 1096
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getOffsetY()F

    move-result v2

    invoke-virtual {v7, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setDrawY(F)V

    .line 1099
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1100
    if-eq v0, v3, :cond_e

    .line 1101
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1102
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_9

    if-le v0, v3, :cond_8

    const/4 v2, 0x1

    move v5, v2

    .line 1104
    :goto_5
    if-nez v5, :cond_b

    add-float v2, v4, v6

    .line 1105
    :goto_6
    if-eqz v5, :cond_1

    sub-float/2addr v1, v6

    .line 1107
    :cond_1
    add-float v4, v8, v10

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1109
    div-float/2addr v1, v10

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v1

    .line 1111
    :goto_7
    invoke-virtual {v7, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setVisiblePercentage(F)V

    .line 1115
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v1, :cond_c

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    .line 1118
    :goto_8
    const/4 v1, 0x0

    .line 1119
    if-le v0, v2, :cond_3

    if-lez v0, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripStacker:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;->canSlideTitleText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1121
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 1122
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v2

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float/2addr v2, v4

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidthWeight()F

    move-result v4

    mul-float/2addr v2, v4

    .line 1124
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v1

    .line 1125
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-nez v4, :cond_2

    add-float/2addr v1, v2

    .line 1129
    :cond_2
    sub-float/2addr v1, v9

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1130
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1132
    sub-float v1, v2, v1

    .line 1136
    :cond_3
    invoke-virtual {v7, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setContentOffsetX(F)V

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1060
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1061
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1071
    :cond_6
    const/4 v1, 0x4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x4

    sub-int v4, v0, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    goto/16 :goto_3

    .line 1075
    :cond_7
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v4, v3, v0

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v1, v4

    goto/16 :goto_4

    .line 1102
    :cond_8
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_5

    :cond_9
    if-ge v0, v3, :cond_a

    const/4 v2, 0x1

    move v5, v2

    goto/16 :goto_5

    :cond_a
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_5

    :cond_b
    move v2, v4

    .line 1104
    goto/16 :goto_6

    :cond_c
    move v2, v3

    .line 1115
    goto :goto_8

    .line 1138
    :cond_d
    return-void

    :cond_e
    move v1, v2

    goto/16 :goto_7
.end method

.method private createRenderList()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1142
    move v0, v1

    move v2, v1

    .line 1143
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1144
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    if-eq v0, v2, :cond_2

    .line 1149
    new-array v0, v2, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    :cond_2
    move v0, v1

    .line 1154
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1155
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    move v1, v2

    .line 1154
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1159
    :cond_4
    return-void
.end method

.method private createStripTab(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;
    .locals 6

    .prologue
    .line 930
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabLoadTrackerHost:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mIncognito:Z

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;-><init>(Landroid/content/Context;ILorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Z)V

    .line 932
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mHeight:F

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setHeight(F)V

    .line 933
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->pushStackerPropertiesToTab(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V

    .line 934
    return-object v0
.end method

.method private findIndexForTab(I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 956
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-nez v0, :cond_1

    move v0, v1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 958
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 960
    goto :goto_0
.end method

.method private getTabAtPosition(F)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;
    .locals 4

    .prologue
    .line 1233
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1234
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v0, v0, v1

    .line 1235
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1240
    :goto_1
    return-object v0

    .line 1233
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1240
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleReorderAutoScrolling(J)V
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    const v7, 0x42aecccd    # 87.4f

    const v9, 0x41933333    # 18.4f

    const/high16 v8, -0x3d760000    # -69.0f

    const/4 v1, 0x0

    .line 1406
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1409
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderScrollTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    .line 1411
    :goto_1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderScrollTime:J

    .line 1413
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v2

    .line 1419
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    add-float/2addr v3, v7

    .line 1420
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    add-float/2addr v4, v9

    .line 1421
    iget v5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, v7

    .line 1423
    iget v6, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v7, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v9

    .line 1430
    iget v7, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    cmpg-float v7, v2, v3

    if-gez v7, :cond_2

    .line 1431
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v2, v3, v2

    neg-float v2, v2

    div-float/2addr v2, v8

    .line 1436
    :goto_2
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v2

    .line 1438
    cmpl-float v1, v2, v1

    if-eqz v1, :cond_3

    .line 1440
    mul-float v1, v10, v2

    .line 1441
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v2, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateScrollOffsetPosition(I)V

    .line 1443
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0

    .line 1409
    :cond_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderScrollTime:J

    sub-long v2, p1, v2

    long-to-float v0, v2

    div-float/2addr v0, v10

    goto :goto_1

    .line 1432
    :cond_2
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    add-float/2addr v3, v2

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 1433
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    add-float/2addr v2, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v2, v5

    div-float/2addr v2, v8

    goto :goto_2

    .line 1446
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderScrollTime:J

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method private static moveElement([Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 1508
    if-gt p1, p2, :cond_0

    .line 1509
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->moveElementUp([Ljava/lang/Object;II)V

    .line 1513
    :goto_0
    return-void

    .line 1511
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->moveElementDown([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private static moveElementDown([Ljava/lang/Object;II)V
    .locals 4

    .prologue
    .line 1527
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1528
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1535
    :goto_0
    return-void

    .line 1530
    :cond_1
    aget-object v1, p0, p1

    .line 1531
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lt v0, p2, :cond_2

    .line 1532
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p0, v0

    aput-object v3, p0, v2

    .line 1531
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1534
    :cond_2
    aput-object v1, p0, p2

    goto :goto_0
.end method

.method private static moveElementUp([Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 1516
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1517
    :cond_0
    if-eq p1, p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_2

    .line 1524
    :cond_1
    :goto_0
    return-void

    .line 1519
    :cond_2
    aget-object v0, p0, p1

    .line 1520
    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_3

    .line 1521
    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    aput-object v1, p0, p1

    .line 1520
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1523
    :cond_3
    add-int/lit8 v1, p2, -0x1

    aput-object v0, p0, v1

    goto :goto_0
.end method

.method private onUpdateAnimation(JZ)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 742
    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateScrollOffset(J)V

    .line 745
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->handleReorderAutoScrolling(J)V

    .line 750
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_8

    .line 751
    if-eqz p3, :cond_4

    .line 752
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    .line 756
    :goto_0
    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->finishAnimation()V

    :cond_2
    move v2, v1

    .line 762
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 763
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v4, v4, v3

    .line 764
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 766
    invoke-virtual {v4, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->onUpdateAnimation(JZ)Z

    move-result v2

    and-int/2addr v0, v2

    move v2, v1

    .line 762
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 754
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->update(J)Z

    move-result v0

    goto :goto_0

    .line 771
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateSpinners(J)V

    .line 774
    if-eqz p3, :cond_6

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->forceFinished(Z)V

    .line 777
    :cond_6
    if-eqz v2, :cond_7

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 779
    :cond_7
    return v0

    :cond_8
    move v0, v1

    move v2, v3

    goto :goto_1
.end method

.method private pushStackerPropertiesToTab(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripStacker:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;->canShowCloseButton()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setCanShowCloseButton(Z)V

    .line 940
    return-void
.end method

.method private reorderTab(IIIZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1377
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_0

    if-ne p2, p3, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findIndexForTab(I)I

    move-result v2

    .line 1382
    if-eq v2, p3, :cond_0

    .line 1386
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v3, :cond_2

    if-eq v2, p2, :cond_2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-eq v0, v3, :cond_0

    .line 1389
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-static {v0, v2, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->moveElement([Ljava/lang/Object;II)V

    .line 1392
    if-ge v2, p3, :cond_3

    add-int/lit8 p3, p3, -0x1

    .line 1395
    :cond_3
    if-eqz p4, :cond_0

    .line 1396
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float v2, v0, v2

    .line 1397
    if-gt p2, p3, :cond_4

    move v0, v1

    .line 1398
    :goto_1
    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v2

    .line 1400
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    sub-int v0, p3, v0

    aget-object v0, v3, v0

    .line 1401
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->buildTabMoveAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V

    goto :goto_0

    .line 1397
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private resetResizeTimeout(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1451
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->hasMessages(I)Z

    move-result v0

    .line 1453
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->removeMessages(I)V

    .line 1455
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 1456
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v4, v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1458
    :cond_2
    return-void
.end method

.method private resizeTabStrip(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 913
    if-eqz p1, :cond_0

    .line 914
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resetResizeTimeout(Z)V

    .line 918
    :goto_0
    return-void

    .line 916
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabWidth(Z)V

    goto :goto_0
.end method

.method private showTabMenu(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V
    .locals 4

    .prologue
    .line 1562
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v0

    .line 1563
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 1566
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v1

    .line 1567
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1570
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    neg-int v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v2, v0

    .line 1574
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1577
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v2, v0

    .line 1581
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 1583
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1584
    return-void
.end method

.method private startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V
    .locals 1

    .prologue
    .line 817
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->finishAnimation()V

    .line 819
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_1

    .line 820
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 823
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->add(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    .line 825
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 826
    return-void
.end method

.method private startReorderMode(JFF)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1267
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v0, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1271
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 1273
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 1276
    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getTabAtPosition(F)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 1277
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-eqz v0, :cond_0

    .line 1280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderScrollTime:J

    .line 1281
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    .line 1282
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderX:F

    .line 1283
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    .line 1286
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 1290
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-direct {p0, v0, v4, v4, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->calculateOffsetToMakeTabVisible(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;ZZZ)F

    move-result v0

    .line 1291
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    float-to-int v4, v0

    const/16 v8, 0xfa

    move v5, v3

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->startScroll(IIIIJI)V

    .line 1294
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0
.end method

.method private stopReorderMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-nez v0, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1301
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderScrollTime:J

    .line 1302
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    .line 1303
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderX:F

    .line 1304
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    .line 1307
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getOffsetX()F

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->buildTabMoveAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V

    .line 1310
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0
.end method

.method private updateNewTabButtonState()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1163
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 1164
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setVisible(Z)V

    .line 1189
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setVisible(Z)V

    .line 1169
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float v2, v1, v2

    .line 1170
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    .line 1172
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1173
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v3, v3, v0

    .line 1174
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidthWeight()F

    move-result v5

    mul-float/2addr v4, v5

    .line 1175
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1176
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1178
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1179
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1181
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 1184
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1185
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setX(F)V

    goto :goto_0

    .line 1187
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setX(F)V

    goto :goto_0
.end method

.method private updateReorderPosition(F)V
    .locals 13

    .prologue
    const/4 v4, -0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1314
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-nez v0, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getOffsetX()F

    move-result v0

    add-float v6, v0, p1

    .line 1317
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findIndexForTab(I)I

    move-result v5

    .line 1320
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mCachedTabWidth:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float v9, v0, v3

    .line 1321
    const v0, 0x3f07ae14    # 0.53f

    mul-float/2addr v0, v9

    .line 1325
    neg-float v3, v0

    cmpg-float v3, v6, v3

    if-gez v3, :cond_5

    move v7, v1

    .line 1326
    :goto_1
    cmpl-float v0, v6, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 1327
    :goto_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_7

    move v8, v1

    .line 1328
    :goto_3
    if-lez v5, :cond_8

    move v3, v1

    .line 1330
    :goto_4
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1336
    :goto_5
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 1337
    add-int/lit8 v0, v5, 0x2

    .line 1343
    :goto_6
    if-eq v0, v4, :cond_e

    .line 1346
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_a

    if-ge v0, v5, :cond_2

    move v2, v1

    .line 1348
    :cond_2
    :goto_7
    invoke-static {v9, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v2

    add-float/2addr v2, v6

    .line 1351
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v3

    invoke-direct {p0, v3, v5, v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->reorderTab(IIIZ)V

    .line 1352
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v6

    invoke-interface {v3, v6, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->moveTab(II)V

    .line 1355
    if-le v0, v5, :cond_b

    :goto_8
    add-int v0, v5, v1

    .line 1358
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateVisualTabOrdering()V

    move v1, v0

    move v0, v2

    .line 1363
    :goto_9
    if-nez v1, :cond_3

    .line 1364
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1367
    :cond_3
    :goto_a
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    .line 1368
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1373
    :cond_4
    :goto_b
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setOffsetX(F)V

    goto/16 :goto_0

    :cond_5
    move v7, v2

    .line 1325
    goto :goto_1

    :cond_6
    move v0, v2

    .line 1326
    goto :goto_2

    :cond_7
    move v8, v2

    .line 1327
    goto :goto_3

    :cond_8
    move v3, v2

    .line 1328
    goto :goto_4

    .line 1338
    :cond_9
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    .line 1339
    add-int/lit8 v0, v5, -0x1

    goto :goto_6

    .line 1346
    :cond_a
    if-le v0, v5, :cond_2

    move v2, v1

    goto :goto_7

    :cond_b
    move v1, v4

    .line 1355
    goto :goto_8

    .line 1364
    :cond_c
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_a

    .line 1368
    :cond_d
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_b

    :cond_e
    move v1, v5

    move v0, v6

    goto :goto_9

    :cond_f
    move v0, v4

    goto :goto_6

    :cond_10
    move v12, v7

    move v7, v0

    move v0, v12

    goto :goto_5
.end method

.method private updateScrollOffset(J)V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->computeScrollOffset(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateScrollOffsetPosition(I)V

    .line 867
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 869
    :cond_0
    return-void
.end method

.method private updateScrollOffsetLimits()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 873
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLeftMargin:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    sub-float v3, v0, v1

    .line 877
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 878
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v4, v4, v0

    .line 879
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidthWeight()F

    move-result v4

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabOverlapWidth:F

    add-float/2addr v0, v1

    .line 886
    sub-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinScrollOffset:F

    .line 887
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinScrollOffset:F

    const v1, -0x457ced91    # -0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinScrollOffset:F

    .line 890
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateScrollOffsetPosition(I)V

    .line 891
    return-void
.end method

.method private updateScrollOffsetPosition(I)V
    .locals 3

    .prologue
    .line 854
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    .line 855
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinScrollOffset:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    .line 857
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    sub-int/2addr v0, v1

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(IZ)I

    move-result v0

    .line 860
    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateReorderPosition(F)V

    .line 862
    :cond_0
    return-void
.end method

.method private updateSpinners(J)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 834
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastSpinnerUpdate:J

    sub-long v2, p1, v2

    .line 835
    long-to-float v1, v2

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v1

    move v1, v0

    .line 837
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 838
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v3, v3, v0

    .line 840
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 841
    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->addLoadingSpinnerRotation(F)V

    .line 842
    const/4 v1, 0x1

    .line 837
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastSpinnerUpdate:J

    .line 846
    if-eqz v1, :cond_2

    .line 847
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->removeMessages(I)V

    .line 848
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabEventHandler:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;

    const-wide/16 v2, 0x42

    invoke-virtual {v0, v5, v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 851
    :cond_2
    return-void
.end method

.method private updateStrip(JJ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 998
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    if-nez v1, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 1003
    :cond_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabOrders(Z)V

    .line 1007
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateScrollOffsetLimits()V

    .line 1010
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeTabInitialPositions()V

    .line 1013
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeTabOffsetHelper()V

    .line 1016
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripStacker:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-interface {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;->performOcclusionPass(I[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V

    .line 1019
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->createRenderList()V

    .line 1022
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateNewTabButtonState()V

    .line 1025
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1026
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1027
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 1033
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->invalidateAccessibilityProvider()V

    goto :goto_0

    .line 1025
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateVisualTabOrdering()V
    .locals 4

    .prologue
    .line 921
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripStacker:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;->createVisualOrdering(I[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V

    .line 926
    return-void
.end method


# virtual methods
.method public click(JFFZI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 687
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resetResizeTimeout(Z)V

    .line 689
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->click(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    if-eqz v2, :cond_1

    .line 690
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->launchNTP()V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getTabAtPosition(F)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v2

    .line 695
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isDying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    invoke-virtual {v2, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->checkCloseHitTest(FF)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p5, :cond_7

    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_7

    .line 699
    :cond_2
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->buildTabClosedAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V

    .line 702
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setIsDying(Z)V

    .line 705
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 706
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v4

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabSelected(JII)V

    .line 709
    :cond_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v2

    if-ne v3, v2, :cond_5

    :cond_4
    move v2, v0

    .line 713
    :goto_1
    if-nez v2, :cond_6

    :goto_2
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resizeTabStrip(Z)V

    goto :goto_0

    :cond_5
    move v2, v1

    .line 709
    goto :goto_1

    :cond_6
    move v0, v1

    .line 713
    goto :goto_2

    .line 715
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v0

    .line 716
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    goto :goto_0
.end method

.method public clickTabMenuItem(I)V
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 1600
    return-void
.end method

.method public drag(JFFFFFF)V
    .locals 9

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resetResizeTimeout(Z)V

    .line 513
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-static {p5, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v0

    .line 516
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->drag(FF)Z

    .line 517
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->drag(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 521
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v1, :cond_8

    .line 525
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderX:F

    sub-float v1, p3, v1

    .line 527
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 528
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_6

    .line 529
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5

    .line 530
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    .line 542
    :cond_1
    :goto_0
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastReorderX:F

    .line 543
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateReorderPosition(F)V

    .line 564
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-nez v0, :cond_3

    .line 565
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 566
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 567
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderMoveStartThreshold:F

    cmpl-float v2, p8, v2

    if-lez v2, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderMoveStartThreshold:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    div-float v0, v1, v0

    sget v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->TAN_OF_REORDER_ANGLE_START_THRESHOLD:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 570
    sub-float v0, p3, p7

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startReorderMode(JFF)V

    .line 577
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 578
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 579
    return-void

    .line 531
    :cond_5
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 532
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    goto :goto_0

    .line 535
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_7

    .line 536
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    goto :goto_0

    .line 537
    :cond_7
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 538
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    goto :goto_0

    .line 545
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    .line 547
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getFinalX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->setFinalX(I)V

    goto :goto_1

    .line 550
    :cond_9
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->calculateOffsetToMakeTabVisible(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;ZZZ)F

    move-result v4

    .line 553
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_c

    .line 554
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_b

    :cond_a
    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 555
    :cond_b
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    const/4 v3, 0x0

    float-to-int v4, v4

    const/4 v5, 0x0

    const/16 v8, 0xfa

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->startScroll(IIIIJI)V

    goto/16 :goto_1

    .line 559
    :cond_c
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateScrollOffsetPosition(I)V

    goto/16 :goto_1
.end method

.method public findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 952
    :goto_0
    return-object v0

    .line 949
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 950
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v0, v1, v0

    goto :goto_0

    .line 949
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 952
    goto :goto_0
.end method

.method public finishAnimation()V
    .locals 5

    .prologue
    .line 795
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 804
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v2, v2, v0

    .line 805
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isDying()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 810
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabById(Lorg/chromium/chrome/browser/tabmodel/TabModel;IZ)Z

    goto :goto_2

    .line 813
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0
.end method

.method public fling(JFFFF)V
    .locals 17

    .prologue
    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resetResizeTimeout(Z)V

    .line 592
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    move/from16 v0, p5

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v6

    .line 595
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v2, :cond_0

    .line 612
    :goto_0
    return-void

    .line 599
    :cond_0
    const/4 v2, 0x0

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getFinalX()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    sub-int/2addr v2, v3

    .line 603
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->forceFinished(Z)V

    .line 608
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    const/4 v5, 0x0

    float-to-int v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mMinScrollOffset:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v14, p1

    invoke-virtual/range {v3 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->fling(IIIIIIIIIIJ)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getFinalX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->setFinalX(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0
.end method

.method public getBackgroundTabBrightness()F
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInReorderMode:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getBrightness()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mBrightness:F

    return v0
.end method

.method public getNewTabButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    return-object v0
.end method

.method public getStripLayoutTabsToRender()[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    return v0
.end method

.method public getVirtualViews(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 218
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsToRender:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v1, v1, v0

    .line 219
    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getVirtualViews(Ljava/util/List;)V

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForegroundTab(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)Z
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabMenuShowing()Z
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    .line 329
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mContext:Landroid/content/Context;

    .line 330
    return-void
.end method

.method public onDown(JFFZI)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 623
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resetResizeTimeout(Z)V

    .line 625
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->onDown(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->requestRender()V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getTabAtPosition(F)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v5

    .line 631
    if-eqz v5, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v6

    invoke-static {v0, v6}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v0

    .line 637
    :goto_1
    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v0, v4, v0

    :goto_2
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 640
    if-eqz v5, :cond_6

    invoke-virtual {v5, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->checkCloseHitTest(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 642
    :goto_3
    if-eqz v0, :cond_2

    .line 643
    invoke-virtual {v5, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setClosePressed(Z)V

    .line 644
    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getCloseButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 645
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->requestRender()V

    .line 648
    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 649
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->forceFinished(Z)V

    .line 650
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 653
    :cond_3
    if-eqz p5, :cond_0

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getVisiblePercentage()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_0

    .line 656
    invoke-direct {p0, p1, p2, p3, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startReorderMode(JFF)V

    goto :goto_0

    :cond_4
    move v0, v4

    .line 631
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 637
    goto :goto_2

    :cond_6
    move v0, v3

    .line 640
    goto :goto_3
.end method

.method public onLongPress(JFF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getTabAtPosition(F)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->checkCloseHitTest(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setClosePressed(Z)V

    .line 670
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->requestRender()V

    .line 671
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->showTabMenu(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V

    .line 676
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->resetResizeTimeout(Z)V

    .line 674
    invoke-direct {p0, p1, p2, p3, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startReorderMode(JFF)V

    goto :goto_0
.end method

.method public onSizeChanged(FF)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 305
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 307
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 309
    :goto_1
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mWidth:F

    .line 310
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mHeight:F

    move v2, v1

    .line 312
    :goto_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 313
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v3, v3, v2

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mHeight:F

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setHeight(F)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 307
    goto :goto_1

    .line 316
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabWidth(Z)V

    .line 317
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 320
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public onUpOrCancel(J)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->onUpOrCancel()Z

    .line 727
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mLastPressedCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 730
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->stopReorderMode()V

    .line 733
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mInteractingTab:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mReorderState:I

    .line 735
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->onUpOrCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->launchNTP()V

    .line 738
    :cond_1
    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mBrightness:F

    .line 256
    return-void
.end method

.method public setRightMargin(F)V
    .locals 2

    .prologue
    .line 295
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    .line 296
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mRightMargin:F

    .line 297
    return-void

    .line 296
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mNewTabButtonWidth:F

    goto :goto_0
.end method

.method public setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    if-ne v0, p1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 350
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 351
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabOrders(Z)V

    goto :goto_0
.end method

.method public tabClosed(JI)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v2

    if-nez v2, :cond_0

    .line 414
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabs:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v2

    if-ne v2, p3, :cond_1

    move v2, v0

    .line 411
    :goto_1
    if-nez v2, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabOrders(Z)V

    .line 413
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 408
    goto :goto_1

    :cond_2
    move v0, v1

    .line 411
    goto :goto_2
.end method

.method public tabClosureCancelled(JI)V
    .locals 7

    .prologue
    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTabId(Lorg/chromium/chrome/browser/tabmodel/TabList;)I

    move-result v0

    if-ne v0, p3, :cond_0

    const/4 v6, 0x1

    .line 423
    :goto_0
    const/4 v5, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabCreated(JIIZ)V

    .line 424
    return-void

    .line 422
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public tabCreated(JIIZ)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 434
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabOrders(Z)V

    .line 440
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->buildTabCreatedAnimation(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V

    .line 444
    :cond_1
    invoke-virtual {p0, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v2

    .line 446
    if-nez p5, :cond_3

    move-object v2, v0

    move v0, v1

    .line 452
    :goto_1
    if-eqz v2, :cond_2

    .line 453
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->calculateOffsetToMakeTabVisible(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;ZZZ)F

    move-result v0

    .line 455
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 456
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    float-to-int v4, v0

    const/16 v8, 0xfa

    move v5, v3

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->startScroll(IIIIJI)V

    .line 460
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public tabLoadFinished(I)V
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->loadingFinished()V

    .line 497
    :cond_0
    return-void
.end method

.method public tabLoadStarted(I)V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->loadingStarted()V

    .line 488
    :cond_0
    return-void
.end method

.method public tabMoved(JIII)V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, p3, p4, p5, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->reorderTab(IIIZ)V

    .line 393
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateVisualTabOrdering()V

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 395
    return-void
.end method

.method public tabPageLoadFinished(I)V
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->pageLoadingFinished()V

    .line 479
    :cond_0
    return-void
.end method

.method public tabPageLoadStarted(I)V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->pageLoadingStarted()V

    .line 470
    :cond_0
    return-void
.end method

.method public tabSelected(JII)V
    .locals 7

    .prologue
    .line 375
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabCreated(JIIZ)V

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateVisualTabOrdering()V

    .line 379
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0
.end method

.method public tabTitleChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->findTabById(I)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setAccessibilityDescription(Ljava/lang/String;)V

    .line 341
    :cond_0
    return-void
.end method

.method public testFling(F)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v5, v4

    move v6, p1

    move v7, v4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->fling(JFFFF)V

    .line 1554
    return-void
.end method

.method public testSetScrollOffset(I)V
    .locals 0

    .prologue
    .line 1543
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mScrollOffset:I

    .line 1544
    return-void
.end method

.method public updateLayout(JJ)Z
    .locals 1

    .prologue
    .line 362
    const-string/jumbo v0, "StripLayoutHelper:updateLayout"

    invoke-static {v0}, Lorg/chromium/base/PerfTraceEvent;->instant(Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onUpdateAnimation(JZ)Z

    move-result v0

    .line 364
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateStrip(JJ)V

    .line 365
    return v0
.end method

.method public visualIndexOfTab(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)I
    .locals 2

    .prologue
    .line 1249
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1250
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mStripTabsVisuallyOrdered:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1254
    :goto_1
    return v0

    .line 1249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
