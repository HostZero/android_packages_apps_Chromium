.class public Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
.super Ljava/lang/Object;
.source "BrowserAccessibilityManager.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field protected mAccessibilityFocusId:I

.field private mAccessibilityFocusRect:Landroid/graphics/Rect;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field protected mCurrentRootId:I

.field private mIsHovering:Z

.field private mLastHoverId:I

.field private mNativeObj:J

.field private mNotifyFrameInfoInitializedCalled:Z

.field private mPendingScrollToMakeNodeVisible:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private mSelectionEndIndex:I

.field private mSelectionGranularity:I

.field private mSelectionStartIndex:I

.field private mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

.field private final mTempLocation:[I

.field private mUserHasTouchExplored:Z

.field private final mView:Landroid/view/ViewGroup;

.field protected mVisible:Z


# direct methods
.method protected constructor <init>(JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mTempLocation:[I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    .line 91
    iput-wide p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 92
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 93
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 95
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 96
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    .line 97
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    new-instance v0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;

    invoke-direct {v0, p0, p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;-><init>(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 122
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    return-void
.end method

.method private addAccessibilityNodeInfoChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 750
    return-void
.end method

.method private announceLiveRegionText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 740
    return-void
.end method

.method private buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 577
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v4, v0

    .line 595
    :cond_1
    :goto_0
    return-object v4

    .line 586
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 588
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 589
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 591
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    move-object v4, v0

    .line 593
    goto :goto_0
.end method

.method private static create(JLorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 2

    .prologue
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 81
    new-instance v0, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method private createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .prologue
    .line 610
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 611
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 612
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 615
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 616
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 617
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 618
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 619
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 622
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 623
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 624
    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 628
    :cond_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 629
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 630
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 634
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 638
    :cond_1
    return-object v1

    .line 628
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishGranularityMove(Ljava/lang/String;ZIIZ)V
    .locals 8

    .prologue
    .line 422
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 424
    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 425
    :cond_0
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/high16 v2, 0x20000

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 427
    if-nez v7, :cond_1

    .line 428
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 434
    :cond_1
    if-eqz p5, :cond_4

    .line 435
    iput p4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 439
    :goto_1
    if-nez p2, :cond_2

    .line 440
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 442
    :cond_2
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 449
    :cond_3
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 450
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 455
    invoke-virtual {v7, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 456
    invoke-virtual {v7, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 458
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 459
    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    if-eqz p5, :cond_5

    .line 463
    const/16 v1, 0x100

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 469
    :goto_2
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 470
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    .line 437
    :cond_4
    iput p3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    goto :goto_1

    .line 465
    :cond_5
    const/16 v1, 0x200

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_2
.end method

.method private getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 600
    if-nez v0, :cond_0

    .line 601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 602
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 604
    :cond_0
    return-object v0
.end method

.method private handleCheckStateChanged(I)V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 672
    return-void
.end method

.method private handleClicked(I)V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 677
    return-void
.end method

.method private handleContentChanged(I)V
    .locals 2

    .prologue
    .line 696
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v0

    .line 697
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq v0, v1, :cond_0

    .line 698
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 699
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnVirtualView(I)V

    goto :goto_0
.end method

.method private handleEditableTextChanged(I)V
    .locals 1

    .prologue
    .line 686
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 687
    return-void
.end method

.method private handleFocusChanged(I)V
    .locals 1

    .prologue
    .line 665
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 666
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 667
    return-void
.end method

.method private handleHover(I)V
    .locals 2

    .prologue
    .line 726
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    if-ne v0, p1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    if-eqz v0, :cond_0

    .line 730
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 731
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 732
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 734
    :cond_2
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    goto :goto_0
.end method

.method private handleNavigate()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 711
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    .line 712
    return-void
.end method

.method private handlePageLoaded(I)V
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->shouldSetAccessibilityFocusOnPageLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private handleScrollPositionChanged(I)V
    .locals 1

    .prologue
    .line 716
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 717
    return-void
.end method

.method private handleScrolledToAnchor(I)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 722
    return-void
.end method

.method private handleSliderChanged(I)V
    .locals 1

    .prologue
    .line 691
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 692
    return-void
.end method

.method private handleTextSelectionChanged(I)V
    .locals 1

    .prologue
    .line 681
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 682
    return-void
.end method

.method private isFrameInfoInitialized()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 650
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isValidMovementGranularity(I)Z
    .locals 1

    .prologue
    .line 200
    packed-switch p0, :pswitch_data_0

    .line 206
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jumpToElementType(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 381
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFindElementType(JILjava/lang/String;Z)I

    move-result v0

    .line 382
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 385
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveAccessibilityFocusToId(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 490
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v1, :cond_0

    .line 510
    :goto_0
    return v0

    .line 492
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 494
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 495
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 496
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 502
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-ne v0, v1, :cond_1

    .line 503
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    .line 508
    :goto_1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const v1, 0x8000

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 510
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    goto :goto_1
.end method

.method private moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v0, :cond_0

    .line 518
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 520
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 523
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 524
    return-void
.end method

.method private native nativeAdjustSlider(JIZ)Z
.end method

.method private native nativeBlur(J)V
.end method

.method private native nativeClick(JI)V
.end method

.method private native nativeFindElementType(JILjava/lang/String;Z)I
.end method

.method private native nativeFocus(JI)V
.end method

.method private native nativeGetEditableTextSelectionEnd(JI)I
.end method

.method private native nativeGetEditableTextSelectionStart(JI)I
.end method

.method private native nativeGetRootId(J)I
.end method

.method private native nativeHitTest(JII)V
.end method

.method private native nativeIsEditableText(JI)Z
.end method

.method private native nativeIsNodeValid(JI)Z
.end method

.method private native nativeIsSlider(JI)Z
.end method

.method private native nativeNextAtGranularity(JIZII)Z
.end method

.method private native nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z
.end method

.method private native nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z
.end method

.method private native nativePreviousAtGranularity(JIZII)Z
.end method

.method private native nativeScroll(JII)Z
.end method

.method private native nativeScrollToMakeNodeVisible(JI)V
.end method

.method private native nativeSetAccessibilityFocus(JI)V
.end method

.method private native nativeSetSelection(JIII)V
.end method

.method private native nativeSetTextFieldValue(JILjava/lang/String;)V
.end method

.method private nextAtGranularity(IZ)Z
    .locals 8

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 407
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v7, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeNextAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private onNativeObjectDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 131
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 132
    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 133
    return-void
.end method

.method private previousAtGranularity(IZ)Z
    .locals 8

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 414
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v7, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePreviousAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private scrollBackward(I)Z
    .locals 3

    .prologue
    .line 482
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsSlider(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v0

    .line 485
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScroll(JII)Z

    move-result v0

    goto :goto_0
.end method

.method private scrollForward(I)Z
    .locals 3

    .prologue
    .line 474
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsSlider(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScroll(JII)Z

    move-result v0

    goto :goto_0
.end method

.method private sendAccessibilityEvent(II)V
    .locals 3

    .prologue
    .line 562
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 563
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private sendDelayedWindowContentChangedEvent()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 534
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;-><init>(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    .line 541
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendWindowContentChangedOnView()V
    .locals 4

    .prologue
    .line 546
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    .line 552
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private sendWindowContentChangedOnVirtualView(I)V
    .locals 1

    .prologue
    .line 556
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 557
    return-void
.end method

.method private setAccessibilityEventBooleanAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZ)V
    .locals 0

    .prologue
    .line 951
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 952
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 953
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 954
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 955
    return-void
.end method

.method private setAccessibilityEventClassName(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 959
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 960
    return-void
.end method

.method private setAccessibilityEventListAttributes(Landroid/view/accessibility/AccessibilityEvent;II)V
    .locals 0

    .prologue
    .line 965
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 966
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 967
    return-void
.end method

.method private setAccessibilityEventScrollAttributes(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 0

    .prologue
    .line 972
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 973
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 974
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 975
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 976
    return-void
.end method

.method private setAccessibilityEventSelectionAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 992
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 993
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 994
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method private setAccessibilityEventTextChangedAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 982
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 983
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 984
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 985
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    return-void
.end method

.method private setAccessibilityNodeInfoBooleanAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 759
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 760
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 761
    invoke-virtual {p1, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 762
    invoke-virtual {p1, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 763
    invoke-virtual {p1, p8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 764
    invoke-virtual {p1, p9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 765
    invoke-virtual {p1, p10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 766
    invoke-virtual {p1, p11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 767
    if-eqz p12, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 769
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 774
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_2

    .line 775
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 779
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 767
    goto :goto_0

    .line 776
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_1
.end method

.method private setAccessibilityNodeInfoClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 832
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 833
    return-void
.end method

.method private setAccessibilityNodeInfoContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 839
    if-eqz p3, :cond_0

    .line 840
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 841
    new-instance v1, Landroid/text/style/URLSpan;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 842
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoLocation(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIIIIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 854
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p5, p7

    add-int v2, p6, p8

    invoke-direct {v0, p5, p6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 856
    if-eqz p9, :cond_0

    .line 858
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 860
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 863
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p3, p7

    add-int v2, p4, p8

    invoke-direct {v0, p3, p4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 866
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 870
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 871
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 872
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 873
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 876
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 880
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 881
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 882
    aget v2, v1, v3

    aget v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 885
    aget v1, v1, v4

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 886
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v2

    add-int/2addr v2, v1

    .line 887
    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v1, :cond_1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 888
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 890
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 897
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p2, v1, :cond_3

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq p2, v1, :cond_3

    .line 898
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    .line 899
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 905
    :cond_3
    :goto_0
    return-void

    .line 900
    :cond_4
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 901
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 902
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoParent(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 745
    return-void
.end method

.method private setGranularityAndUpdateSelection(I)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 391
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    if-nez v0, :cond_0

    .line 392
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 393
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 395
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 396
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionStart(JI)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 399
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionEnd(JI)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 402
    :cond_1
    return-void
.end method


# virtual methods
.method protected addAccessibilityNodeInfoActions(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZZ)V
    .locals 1

    .prologue
    .line 789
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 790
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 791
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 792
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 794
    if-eqz p10, :cond_0

    if-eqz p11, :cond_0

    .line 795
    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 796
    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 799
    :cond_0
    if-eqz p3, :cond_1

    .line 800
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 803
    :cond_1
    if-eqz p4, :cond_2

    .line 804
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 810
    :cond_2
    if-eqz p12, :cond_3

    .line 811
    if-eqz p13, :cond_6

    .line 812
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 818
    :cond_3
    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_7

    .line 819
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 824
    :cond_4
    :goto_1
    if-eqz p9, :cond_5

    .line 825
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 827
    :cond_5
    return-void

    .line 814
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 820
    :cond_7
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_4

    .line 821
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method protected createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v2

    .line 167
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 168
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 176
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 179
    if-ne p1, v2, :cond_3

    .line 180
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 183
    :cond_3
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0
.end method

.method protected findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method protected native nativeGetSupportedHtmlElementTypes(J)Ljava/lang/String;
.end method

.method public notifyFrameInfoInitialized()V
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    .line 371
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    .line 375
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 376
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 326
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 356
    :goto_0
    return v0

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 331
    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 332
    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    if-eq v2, v6, :cond_2

    .line 333
    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/16 v3, 0x100

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 334
    iput v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    .line 336
    :cond_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    if-eqz v2, :cond_3

    .line 337
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v4}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 340
    :cond_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_0

    .line 344
    :cond_4
    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 345
    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 350
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v1

    float-to-int v1, v1

    .line 351
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v2

    float-to-int v2, v2

    .line 355
    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v4, v5, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeHitTest(JII)V

    goto :goto_0
.end method

.method protected performAction(IILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 215
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsNodeValid(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v6

    .line 220
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 245
    :sswitch_0
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFocus(JI)V

    move v6, v0

    .line 246
    goto :goto_0

    .line 222
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v6, v0

    goto :goto_0

    .line 224
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    if-nez v1, :cond_3

    .line 225
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    :goto_1
    move v6, v0

    .line 230
    goto :goto_0

    .line 228
    :cond_3
    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_1

    .line 234
    :sswitch_2
    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 236
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v1, p1, :cond_4

    .line 237
    const/4 v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    :cond_4
    move v6, v0

    .line 240
    goto :goto_0

    .line 242
    :sswitch_3
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeClick(JI)V

    move v6, v0

    .line 243
    goto :goto_0

    .line 248
    :sswitch_4
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeBlur(J)V

    move v6, v0

    .line 249
    goto :goto_0

    .line 251
    :sswitch_5
    if-eqz p3, :cond_0

    .line 252
    const-string/jumbo v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_0

    .line 255
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-direct {p0, v1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_0

    .line 259
    :sswitch_6
    if-eqz p3, :cond_0

    .line 260
    const-string/jumbo v0, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-direct {p0, v0, v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_0

    .line 267
    :sswitch_7
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    if-eqz p3, :cond_0

    .line 269
    const-string/jumbo v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_0

    .line 272
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetTextFieldValue(JILjava/lang/String;)V

    .line 274
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    move v6, v0

    .line 275
    goto/16 :goto_0

    .line 278
    :sswitch_8
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    if-eqz p3, :cond_5

    .line 282
    const-string/jumbo v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 284
    const-string/jumbo v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 287
    :goto_2
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    move v6, v0

    .line 288
    goto/16 :goto_0

    .line 291
    :sswitch_9
    if-eqz p3, :cond_0

    .line 292
    const-string/jumbo v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 294
    const-string/jumbo v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 296
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nextAtGranularity(IZ)Z

    move-result v6

    goto/16 :goto_0

    .line 302
    :sswitch_a
    if-eqz p3, :cond_0

    .line 303
    const-string/jumbo v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    const-string/jumbo v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 307
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->previousAtGranularity(IZ)Z

    move-result v6

    goto/16 :goto_0

    .line 313
    :sswitch_b
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->scrollForward(I)Z

    move-result v6

    goto/16 :goto_0

    .line 315
    :sswitch_c
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->scrollBackward(I)Z

    move-result v6

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto :goto_2

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x10 -> :sswitch_3
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x20000 -> :sswitch_8
        0x200000 -> :sswitch_7
    .end sparse-switch
.end method

.method protected setAccessibilityEventCollectionInfo(Landroid/view/accessibility/AccessibilityEvent;IIZ)V
    .locals 2

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1020
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionInfo.rowCount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionInfo.columnCount"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1022
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionInfo.hierarchical"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1023
    return-void
.end method

.method protected setAccessibilityEventCollectionItemInfo(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 2

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1038
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionItemInfo.rowIndex"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionItemInfo.rowSpan"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionItemInfo.columnIndex"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1041
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionItemInfo.columnSpan"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1042
    return-void
.end method

.method protected setAccessibilityEventHeadingFlag(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1030
    const-string/jumbo v1, "AccessibilityNodeInfo.CollectionItemInfo.heading"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    return-void
.end method

.method protected setAccessibilityEventLollipopAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZII)V
    .locals 2

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1007
    const-string/jumbo v1, "AccessibilityNodeInfo.canOpenPopup"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1008
    const-string/jumbo v1, "AccessibilityNodeInfo.contentInvalid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1009
    const-string/jumbo v1, "AccessibilityNodeInfo.dismissable"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1010
    const-string/jumbo v1, "AccessibilityNodeInfo.multiLine"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1011
    const-string/jumbo v1, "AccessibilityNodeInfo.inputType"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    const-string/jumbo v1, "AccessibilityNodeInfo.liveRegion"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    return-void
.end method

.method protected setAccessibilityEventRangeInfo(Landroid/view/accessibility/AccessibilityEvent;IFFF)V
    .locals 2

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1049
    const-string/jumbo v1, "AccessibilityNodeInfo.RangeInfo.type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    const-string/jumbo v1, "AccessibilityNodeInfo.RangeInfo.min"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1051
    const-string/jumbo v1, "AccessibilityNodeInfo.RangeInfo.max"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1052
    const-string/jumbo v1, "AccessibilityNodeInfo.RangeInfo.current"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1053
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIZ)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method protected setAccessibilityNodeInfoKitKatAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 911
    return-void
.end method

.method protected setAccessibilityNodeInfoLollipopAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZZZII)V
    .locals 0

    .prologue
    .line 922
    return-void
.end method

.method protected setAccessibilityNodeInfoRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IFFF)V
    .locals 0

    .prologue
    .line 940
    return-void
.end method

.method protected setAccessibilityNodeInfoViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 946
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-ne p1, v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    .line 154
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    goto :goto_0
.end method

.method shouldExposePasswordText()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1057
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
