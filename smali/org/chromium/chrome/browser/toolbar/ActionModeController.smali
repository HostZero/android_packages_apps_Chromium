.class public Lorg/chromium/chrome/browser/toolbar/ActionModeController;
.super Ljava/lang/Object;
.source "ActionModeController.java"


# static fields
.field public static final TOP_MARGIN_ANIM_PROPERTY:Landroid/util/Property;


# instance fields
.field private final mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mShowingActionMode:Z

.field private mTabStripHeight:F

.field private mToolbarActionModeCallback:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "controlTopMargin"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->TOP_MARGIN_ANIM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mShowingActionMode:Z

    .line 81
    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mTabStripHeight:F

    .line 84
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/toolbar/ActionModeController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->queryCurrentActionBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mTabStripHeight:F

    return v0
.end method

.method private queryCurrentActionBarHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->b()I

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lorg/chromium/chrome/R$attr;->actionBarSize:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 127
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarDelegate()Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    return-object v0
.end method

.method public getActionModeCallback()Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mToolbarActionModeCallback:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    return-object v0
.end method

.method public setCustomSelectionActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mToolbarActionModeCallback:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mToolbarActionModeCallback:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mToolbarActionModeCallback:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->setActionModeController(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V

    goto :goto_0
.end method

.method public setTabStripHeight(I)V
    .locals 1

    .prologue
    .line 90
    int-to-float v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mTabStripHeight:F

    .line 91
    return-void
.end method

.method public showControlsOnOrientationChange()V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->startShowAnimation()V

    .line 138
    :cond_0
    return-void
.end method

.method public startHideAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->TOP_MARGIN_ANIM_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ActionModeController$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$4;-><init>(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 191
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mShowingActionMode:Z

    .line 192
    return-void
.end method

.method public startShowAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->TOP_MARGIN_ANIM_PROPERTY:Landroid/util/Property;

    new-array v2, v7, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->queryCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mTabStripHeight:F

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ActionModeController$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$2;-><init>(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;-><init>(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    invoke-interface {v0, v7}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->setActionBarBackgroundVisibility(Z)V

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 170
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mShowingActionMode:Z

    .line 171
    return-void
.end method
