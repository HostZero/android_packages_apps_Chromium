.class public Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;
.super Landroid/widget/LinearLayout;
.source "FindToolbar.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;
.implements Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccessibilityDidActivateResult:Z

.field private mAccessibleAnnouncementRunnable:Ljava/lang/Runnable;

.field private mActive:Z

.field protected mCloseFindButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

.field protected mFindNextButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field protected mFindPrevButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field protected mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

.field private mFindStatus:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLastUserSearch:Ljava/lang/String;

.field private mObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

.field private mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

.field private mSearchKeyShouldTriggerSearch:Z

.field private mSettingFindTextProgrammatically:Z

.field private mShowKeyboardOnceWindowIsFocused:Z

.field private final mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field protected mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private final mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mLastUserSearch:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSettingFindTextProgrammatically:Z

    .line 79
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z

    .line 81
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mActive:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mHandler:Landroid/os/Handler;

    .line 332
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mShowKeyboardOnceWindowIsFocused:Z

    .line 166
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 183
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$2;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 191
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->hideKeyboardAndStartFinding(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibilityDidActivateResult:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSettingFindTextProgrammatically:Z

    return v0
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mLastUserSearch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->showKeyboard()V

    return-void
.end method

.method private announceStatusForAccessibility(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 463
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibilityDidActivateResult:Z

    if-eqz v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibleAnnouncementRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibleAnnouncementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibleAnnouncementRunnable:Ljava/lang/Runnable;

    .line 479
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibleAnnouncementRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getAccessibleStatusText(II)Ljava/lang/String;
    .locals 5

    .prologue
    .line 451
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 452
    if-lez p2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessible_find_in_page_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessible_find_in_page_no_results:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideKeyboardAndStartFinding(Z)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-static {v1}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 327
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->startFinding(Ljava/lang/String;ZZ)V

    .line 328
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->activateFindInPageResultForAccessibility()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibilityDidActivateResult:Z

    goto :goto_0
.end method

.method private initializeFindText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 623
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 625
    :cond_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSettingFindTextProgrammatically:Z

    .line 626
    const/4 v0, 0x0

    .line 627
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSettingFindTextProgrammatically:Z

    if-eqz v1, :cond_2

    .line 628
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->getPreviousFindText()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mLastUserSearch:Ljava/lang/String;

    .line 632
    :cond_1
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z

    .line 636
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSettingFindTextProgrammatically:Z

    .line 638
    return-void

    .line 634
    :cond_2
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z

    goto :goto_0
.end method

.method private setResultsBarVisibility(Z)V
    .locals 4

    .prologue
    .line 649
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 651
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 653
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    .line 660
    :cond_1
    :goto_0
    return-void

    .line 654
    :cond_2
    if-nez p1, :cond_1

    .line 655
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->dismiss()V

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    goto :goto_0
.end method

.method private setStatus(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 666
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p2, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getStatusColor(ZZ)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKeyboard()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mShowKeyboardOnceWindowIsFocused:Z

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 526
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->isViewAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mActive:Z

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->requestQueryFocus()V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 533
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 534
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_1

    .line 536
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 537
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 538
    new-instance v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    .line 539
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->setFindResultListener(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;)V

    .line 540
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->setFindMatchRectsListener(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;)V

    .line 541
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->initializeFindText()V

    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->requestFocus()Z

    .line 544
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->showKeyboard()V

    .line 546
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setResultsBarVisibility(Z)V

    .line 547
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mActive:Z

    .line 548
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->updateVisualsForTabModel(Z)V

    .line 551
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;->onFindToolbarShown()V

    goto :goto_0
.end method

.method protected clearResults()V
    .locals 2

    .prologue
    .line 642
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setStatus(Ljava/lang/String;Z)V

    .line 643
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->clearMatchRects()V

    .line 646
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate(Z)V

    .line 559
    return-void
.end method

.method public deactivate(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 566
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mActive:Z

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;->onFindToolbarHidden()V

    .line 570
    :cond_1
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setResultsBarVisibility(Z)V

    .line 572
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 573
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 574
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_1

    .line 577
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->setFindResultListener(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;)V

    .line 578
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->setFindMatchRectsListener(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;)V

    .line 579
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 581
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 582
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 583
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->clearResults()V

    .line 584
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->stopFinding(Z)V

    .line 587
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->destroy()V

    .line 588
    iput-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    .line 589
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mActive:Z

    goto :goto_0
.end method

.method protected findResultSelected(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public getFindResultBar()Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    return-object v0
.end method

.method protected getStatusColor(ZZ)I
    .locals 2

    .prologue
    .line 675
    if-eqz p1, :cond_0

    sget v0, Lorg/chromium/chrome/R$color;->find_in_page_failed_results_status_color:I

    .line 677
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    return v0

    .line 675
    :cond_0
    sget v0, Lorg/chromium/chrome/R$color;->find_in_page_results_status_color:I

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method protected isViewAvailable()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFindMatchRects(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;)V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    iget v1, p1, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->version:I

    iget-object v2, p1, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->rects:[Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->activeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->setMatchRects(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->clearMatchRects()V

    goto :goto_0
.end method

.method public onFindResult(Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;)V
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    iput-boolean v2, v3, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mWaitingForActivateAck:Z

    .line 385
    :cond_0
    sget-boolean v3, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 387
    :cond_1
    iget v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->activeMatchOrdinal:I

    if-eq v3, v0, :cond_2

    iget v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    if-ne v3, v1, :cond_4

    :cond_2
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->finalUpdate:Z

    if-nez v3, :cond_4

    .line 448
    :cond_3
    :goto_0
    return-void

    .line 401
    :cond_4
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->finalUpdate:Z

    if-eqz v3, :cond_6

    .line 402
    iget v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    if-lez v3, :cond_7

    .line 404
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    if-eqz v4, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mResultBar:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    iget v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mRectsVersion:I

    :cond_5
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->requestFindMatchRects(I)V

    .line 410
    :goto_1
    iget-object v0, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->rendererSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findResultSelected(Landroid/graphics/Rect;)V

    .line 420
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/chromium/chrome/R$string;->find_in_page_count:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->activeMatchOrdinal:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 425
    iget v0, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    invoke-direct {p0, v4, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setStatus(Ljava/lang/String;Z)V

    .line 428
    iget v0, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->activeMatchOrdinal:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->getAccessibleStatusText(II)Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 432
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->announceStatusForAccessibility(Ljava/lang/String;)V

    .line 435
    iget v0, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->finalUpdate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->getPreviousFindText()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 438
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "haptic_feedback_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 441
    :goto_3
    if-eqz v1, :cond_3

    .line 442
    const-string/jumbo v0, "vibrator"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 445
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 407
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->clearResults()V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 425
    goto :goto_2

    :cond_9
    move v1, v2

    .line 438
    goto :goto_3
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setOrientation(I)V

    .line 208
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setGravity(I)V

    .line 210
    sget v0, Lorg/chromium/chrome/R$id;->find_query:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setFindToolbar(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setInputType(I)V

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setSelectAllOnFocus(Z)V

    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 287
    sget v0, Lorg/chromium/chrome/R$id;->find_status:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindStatus:Landroid/widget/TextView;

    .line 289
    sget v0, Lorg/chromium/chrome/R$id;->find_prev_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindPrevButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindPrevButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$7;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$7;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget v0, Lorg/chromium/chrome/R$id;->find_next_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindNextButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindNextButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$8;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$8;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setPrevNextEnabled(Z)V

    .line 307
    sget v0, Lorg/chromium/chrome/R$id;->close_find_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCloseFindButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCloseFindButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$9;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$9;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method protected onHideAnimationStart()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setResultsBarVisibility(Z)V

    .line 604
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 338
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mShowKeyboardOnceWindowIsFocused:Z

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mShowKeyboardOnceWindowIsFocused:Z

    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    :cond_0
    return-void
.end method

.method public requestQueryFocus()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->requestFocus()Z

    .line 597
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->showKeyboard()V

    .line 598
    return-void
.end method

.method public setActionModeCallbackForTextEdit(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 504
    return-void
.end method

.method protected setObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    .line 511
    return-void
.end method

.method protected setPrevNextEnabled(Z)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindPrevButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindNextButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 683
    return-void
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 1

    .prologue
    .line 485
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 486
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->updateVisualsForTabModel(Z)V

    .line 487
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateVisualsForTabModel(Z)V
    .locals 0

    .prologue
    .line 494
    return-void
.end method
