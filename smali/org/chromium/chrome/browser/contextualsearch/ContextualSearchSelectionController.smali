.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;
.super Ljava/lang/Object;
.source "ContextualSearchSelectionController.java"


# static fields
.field private static final RETAP_DISTANCE_SQUARED_DP:D


# instance fields
.field private final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private final mContainsWordPattern:Ljava/util/regex/Pattern;

.field private mDidExpandSelection:Z

.field private final mHandleInvalidTapRunnable:Ljava/lang/Runnable;

.field private final mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

.field private mIsSelectionEstablished:Z

.field private mIsWaitingForInvalidTapDetection:Z

.field private final mPxToDp:F

.field private final mRunnableHandler:Landroid/os/Handler;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

.field private mShouldHandleSelectionModification:Z

.field private final mSingleDigitPattern:Ljava/util/regex/Pattern;

.field private mWasLastTapValid:Z

.field private mWasTapGestureDetected:Z

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-wide v0, 0x4052c00000000000L    # 75.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->RETAP_DISTANCE_SQUARED_DP:D

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 100
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mPxToDp:F

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mRunnableHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandleInvalidTapRunnable:Ljava/lang/Runnable;

    .line 111
    const-string/jumbo v0, "(\\w|\\p{L}|\\p{N})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mContainsWordPattern:Ljava/util/regex/Pattern;

    .line 112
    const-string/jumbo v0, "^\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSingleDigitPattern:Ljava/util/regex/Pattern;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->scheduleInvalidTapNotification()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->onInvalidTapDetectionTimeout()V

    return-void
.end method

.method private handleSelection(Ljava/lang/String;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;)V
    .locals 6

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mShouldHandleSelectionModification:Z

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->isValidSelection(Ljava/lang/String;)Z

    move-result v2

    iget v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mX:F

    iget v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mY:F

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleSelection(Ljava/lang/String;ZLorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;FF)V

    .line 266
    return-void
.end method

.method private isBlacklistedWord(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSingleDigitPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private isValidSelection(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->isValidSelection(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method private onInvalidTapDetectionTimeout()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleInvalidTap()V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mIsWaitingForInvalidTapDetection:Z

    .line 385
    return-void
.end method

.method private preventHandlingCurrentSelectionModification()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mShouldHandleSelectionModification:Z

    .line 412
    return-void
.end method

.method private resetAllStates()V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->resetSelectionStates()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasLastTapValid:Z

    .line 274
    return-void
.end method

.method private resetSelectionStates()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->UNDETERMINED:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectedText:Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    .line 284
    return-void
.end method

.method private scheduleInvalidTapNotification()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mRunnableHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandleInvalidTapRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method

.method private shouldHandleTap(II)Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasLastTapValid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->wasTapCloseToPreviousTap(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldPreventHandlingCurrentSelectionModification(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)Z
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unscheduleInvalidTapNotification()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mRunnableHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandleInvalidTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mIsWaitingForInvalidTapDetection:Z

    .line 377
    return-void
.end method

.method private wasTapCloseToPreviousTap(II)Z
    .locals 4

    .prologue
    .line 352
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mX:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mPxToDp:F

    mul-float/2addr v0, v1

    .line 353
    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mY:F

    int-to-float v2, p2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mPxToDp:F

    mul-float/2addr v1, v2

    .line 354
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 355
    float-to-double v0, v0

    sget-wide v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->RETAP_DISTANCE_SQUARED_DP:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method adjustSelection(II)V
    .locals 2

    .prologue
    .line 331
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mDidExpandSelection:Z

    .line 335
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/content_public/browser/WebContents;->adjustSelectionByCharacterOffset(II)V

    goto :goto_0
.end method

.method clearSelection()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    .line 172
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->resetAllStates()V

    .line 173
    return-void
.end method

.method public doesContainAWord(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mContainsWordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGestureStateListener()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;)V

    return-object v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    return-object v0
.end method

.method handleSelectionChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mDidExpandSelection:Z

    if-eqz v0, :cond_0

    .line 181
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectedText:Ljava/lang/String;

    .line 182
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mDidExpandSelection:Z

    .line 209
    :goto_0
    return-void

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->scheduleInvalidTapNotification()V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v0, v1, :cond_2

    .line 192
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->resetSelectionStates()V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->unscheduleInvalidTapNotification()V

    .line 200
    :cond_3
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectedText:Ljava/lang/String;

    .line 202
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    if-eqz v0, :cond_4

    .line 203
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->handleSelection(Ljava/lang/String;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;)V

    .line 205
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    goto :goto_0

    .line 207
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->isValidSelection(Ljava/lang/String;)Z

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mX:F

    iget v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mY:F

    invoke-interface {v0, p1, v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleSelectionModification(Ljava/lang/String;ZFF)V

    goto :goto_0
.end method

.method handleSelectionEvent(IFF)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    .line 219
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 243
    :goto_1
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    iput p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mX:F

    .line 249
    iput p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mY:F

    .line 250
    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectedText:Ljava/lang/String;

    .line 251
    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->handleSelection(Ljava/lang/String;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;)V

    .line 255
    :cond_0
    return-void

    .line 221
    :sswitch_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    .line 222
    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    .line 225
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->unscheduleInvalidTapNotification()V

    goto :goto_1

    .line 228
    :sswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleSelectionDismissal()V

    .line 229
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->resetAllStates()V

    move v0, v1

    .line 230
    goto :goto_1

    .line 232
    :sswitch_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mShouldHandleSelectionModification:Z

    goto :goto_1

    .line 235
    :sswitch_3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mIsSelectionEstablished:Z

    move v0, v1

    .line 236
    goto :goto_1

    .line 238
    :sswitch_4
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mIsSelectionEstablished:Z

    goto :goto_0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method

.method handleShowUnhandledTapUIIfNeeded(II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 290
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    .line 291
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->shouldHandleTap(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    int-to-float v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mX:F

    .line 293
    int-to-float v0, p2

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mY:F

    .line 294
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasLastTapValid:Z

    .line 295
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$2;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasTapGestureDetected:Z

    if-nez v0, :cond_1

    .line 307
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mWasLastTapValid:Z

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleInvalidTap()V

    .line 310
    :cond_1
    return-void
.end method

.method isSelectionEstablished()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mIsSelectionEstablished:Z

    return v0
.end method

.method isValidSelection(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->doesContainAWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/chromium/content/browser/ContentViewCore;->isFocusedNodeEditable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isDigitBlacklistEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->isBlacklistedWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onBasePageLoadStarted()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->resetAllStates()V

    .line 120
    return-void
.end method

.method onSearchEnded(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->shouldPreventHandlingCurrentSelectionModification(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->preventHandlingCurrentSelectionModification()V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v0, v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->clearSelection()V

    .line 139
    :cond_1
    return-void
.end method

.method wasAnyTapGestureDetected()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mIsWaitingForInvalidTapDetection:Z

    return v0
.end method
