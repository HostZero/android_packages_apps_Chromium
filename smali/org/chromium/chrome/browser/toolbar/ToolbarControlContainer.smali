.class public Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
.super Landroid/widget/FrameLayout;
.source "ToolbarControlContainer.java"

# interfaces
.implements Lorg/chromium/chrome/browser/widget/ControlContainer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mMenuBtn:Landroid/view/View;

.field private mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

.field private final mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

.field private final mTabStripHeight:F

.field private mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

.field private mToolbarContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mTabStripHeight:F

    .line 49
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->isOnTabStrip(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;)Lorg/chromium/chrome/browser/toolbar/Toolbar;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    return-object v0
.end method

.method private isOnTabStrip(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mTabStripHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getProgressBarDrawingInfo(Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->getDrawingInfo(Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V

    .line 61
    return-void
.end method

.method public getToolbarResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbarContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->getResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v0

    return-object v0
.end method

.method public invalidateBitmap()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->getToolbarResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->forceInvalidate()V

    .line 98
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    sget v0, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/Toolbar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    .line 77
    sget v0, Lorg/chromium/chrome/R$id;->toolbar_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbarContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    .line 78
    sget v0, Lorg/chromium/chrome/R$id;->menu_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mMenuBtn:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    instance-of v0, v0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    if-eqz v0, :cond_0

    .line 84
    sget v0, Lorg/chromium/chrome/R$drawable;->toolbar_background:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->setBackgroundResource(I)V

    .line 87
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mMenuBtn:Landroid/view/View;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->isOnTabStrip(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setReadyForBitmapCapture(Z)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbarContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->mReadyForBitmapCapture:Z
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->access$002(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;Z)Z

    .line 106
    return-void
.end method

.method public setSwipeHandler(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->setSwipeHandler(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V

    .line 72
    return-void
.end method
