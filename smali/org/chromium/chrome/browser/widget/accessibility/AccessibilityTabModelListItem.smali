.class public Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;
.super Landroid/widget/FrameLayout;
.source "AccessibilityTabModelListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActiveAnimation:Landroid/animation/Animator;

.field private final mActuallyCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

.field private mCanUndo:Z

.field private mCloseAnimationDurationMs:I

.field private final mCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mCloseButtonClicked:Z

.field private final mCloseRunnable:Ljava/lang/Runnable;

.field private mCloseTimeoutMs:I

.field private mDefaultAnimationDurationMs:I

.field private final mDefaultHeight:I

.field private mFaviconView:Landroid/widget/ImageView;

.field private final mFlingCommitDistance:F

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

.field private final mSwipeCommitDistance:F

.field private final mSwipeGestureDetector:Landroid/view/GestureDetector;

.field private mSwipedAway:F

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mTabContents:Landroid/widget/LinearLayout;

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

.field private mTitleView:Landroid/widget/TextView;

.field private mUndoButton:Landroid/widget/Button;

.field private mUndoContents:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 165
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActuallyCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 350
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 199
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipeGestureDetector:Landroid/view/GestureDetector;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->swipe_commit_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipeCommitDistance:F

    .line 202
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipeCommitDistance:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mFlingCommitDistance:F

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->accessibility_tab_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultHeight:I

    .line 207
    const/16 v0, 0x64

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimationDurationMs:I

    .line 208
    const/16 v0, 0x12c

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I

    .line 209
    const/16 v0, 0xfa0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseTimeoutMs:I

    .line 210
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runCloseAnimation()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButtonClicked:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoContents:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButtonClicked:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateFavicon()V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->notifyTabUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateTabTitle()V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mFlingCommitDistance:F

    return v0
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I

    return v0
.end method

.method static synthetic access$1900(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;J)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runSwipeAnimation(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->showUndoView(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runResetAnimation(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseTimeoutMs:I

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabContents:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private cancelRunningAnimation()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 566
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    .line 567
    return-void
.end method

.method private notifyTabUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->tabChanged(I)V

    .line 571
    :cond_0
    return-void
.end method

.method private runBlinkOutAnimation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 532
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    .line 533
    iput v4, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipedAway:F

    .line 535
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v6, [F

    const v2, 0x3f99999a    # 1.2f

    aput v2, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 536
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v6, [F

    aput v4, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 537
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 539
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 540
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 541
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimationDurationMs:I

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 543
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 545
    iput-object v3, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    .line 546
    return-void
.end method

.method private runCloseAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 549
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    .line 551
    const-string/jumbo v0, "height"

    new-array v1, v5, [I

    aput v4, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 552
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 554
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 555
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 556
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActuallyCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 558
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 560
    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    .line 561
    return-void
.end method

.method private runResetAnimation(Z)V
    .locals 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 514
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    .line 516
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v8, [F

    const/4 v2, 0x0

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 517
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v8, [F

    aput v5, v2, v7

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 518
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 519
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 520
    const-string/jumbo v4, "height"

    new-array v5, v8, [I

    iget v6, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultHeight:I

    aput v6, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 522
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 523
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v7

    aput-object v1, v6, v8

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 524
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimationDurationMs:I

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 526
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 528
    iput-object v5, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    .line 529
    return-void

    .line 524
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method private runSwipeAnimation(J)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 497
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    .line 498
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getTranslationX()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipedAway:F

    .line 500
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v5, [F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    aput v0, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 502
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 504
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 505
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 506
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 508
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 510
    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mActiveAnimation:Landroid/animation/Animator;

    .line 511
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private showUndoView(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 246
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanUndo:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateTabTitle()V

    .line 253
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateFavicon()V

    goto :goto_0
.end method

.method private updateFavicon()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mFaviconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mFaviconView:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->globe_incognito_favicon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateTabTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_0

    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->tab_loading_default_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_tab:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_tab:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    :cond_3
    return-void
.end method


# virtual methods
.method public disableAnimations()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 485
    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseAnimationDurationMs:I

    .line 486
    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I

    .line 487
    iput v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseTimeoutMs:I

    .line 488
    return-void
.end method

.method public hasPendingClosure()Z
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->hasPendingClosure(I)Z

    move-result v0

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateFavicon()V

    .line 338
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateTabTitle()V

    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 303
    if-ne p1, p0, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->hasPendingClosure(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->tabSelected(I)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_4

    .line 306
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButtonClicked:Z

    .line 307
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanUndo:Z

    if-eqz v0, :cond_3

    .line 308
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runBlinkOutAnimation()V

    goto :goto_0

    .line 310
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runCloseAnimation()V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 314
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->cancelPendingClosure(I)V

    .line 317
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->showUndoView(Z)V

    .line 318
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setAlpha(F)V

    .line 319
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipedAway:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 320
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setTranslationX(F)V

    .line 321
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runResetAnimation(Z)V

    goto :goto_0

    .line 322
    :cond_5
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipedAway:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    .line 323
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setTranslationX(F)V

    .line 324
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runResetAnimation(Z)V

    goto :goto_0

    .line 326
    :cond_6
    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setScaleX(F)V

    .line 327
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setScaleY(F)V

    .line 328
    invoke-direct {p0, v5}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runResetAnimation(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 347
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    .line 348
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 215
    sget v0, Lorg/chromium/chrome/R$id;->tab_contents:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabContents:Landroid/widget/LinearLayout;

    .line 216
    sget v0, Lorg/chromium/chrome/R$id;->tab_title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTitleView:Landroid/widget/TextView;

    .line 217
    sget v0, Lorg/chromium/chrome/R$id;->tab_favicon:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mFaviconView:Landroid/widget/ImageView;

    .line 218
    sget v0, Lorg/chromium/chrome/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButton:Landroid/widget/ImageButton;

    .line 220
    sget v0, Lorg/chromium/chrome/R$id;->undo_contents:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoContents:Landroid/widget/LinearLayout;

    .line 221
    sget v0, Lorg/chromium/chrome/R$id;->undo_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoButton:Landroid/widget/Button;

    .line 223
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setClickable(Z)V

    .line 224
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setFocusable(Z)V

    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 385
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipeGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 388
    if-eqz v1, :cond_0

    .line 398
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mSwipeCommitDistance:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 391
    const-wide/16 v2, 0x12c

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runSwipeAnimation(J)V

    .line 395
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->setCanScroll(Z)V

    goto :goto_0

    .line 393
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runResetAnimation(Z)V

    goto :goto_1

    .line 398
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public resetState()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setTranslationX(F)V

    .line 422
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setAlpha(F)V

    .line 423
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setScaleX(F)V

    .line 424
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setScaleY(F)V

    .line 425
    iget v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultHeight:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setHeight(I)V

    .line 426
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V

    .line 428
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->hasPendingClosure(I)Z

    move-result v0

    .line 432
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->showUndoView(Z)V

    .line 433
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseTimeoutMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->showUndoView(Z)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 408
    if-nez v0, :cond_1

    .line 409
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 414
    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    :cond_0
    return-void

    .line 411
    :cond_1
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 412
    iput p1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setListeners(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    .line 264
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    .line 265
    return-void
.end method

.method public setTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 238
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 240
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanUndo:Z

    .line 241
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateTabTitle()V

    .line 242
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateFavicon()V

    .line 243
    return-void
.end method
