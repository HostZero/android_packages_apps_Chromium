.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityTabModelListItem.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 466
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mFlingCommitDistance:F
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1700(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 468
    :cond_0
    mul-float v1, p3, p3

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 469
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getWidth()I

    move-result v1

    int-to-double v4, v1

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x96

    mul-long/2addr v2, v4

    .line 471
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mDefaultAnimationDurationMs:I
    invoke-static {v4}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1800(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runSwipeAnimation(J)V
    invoke-static {v1, v2, v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1900(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;J)V

    .line 472
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1600(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->setCanScroll(Z)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$200(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->hasPendingClosure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1600(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->setCanScroll(Z)V

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 458
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getTranslationX()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setTranslationX(F)V

    .line 459
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setAlpha(F)V

    .line 460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$SwipeGestureListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->performClick()Z

    .line 479
    const/4 v0, 0x1

    return v0
.end method
