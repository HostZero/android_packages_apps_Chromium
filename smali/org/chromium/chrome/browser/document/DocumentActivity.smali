.class public Lorg/chromium/chrome/browser/document/DocumentActivity;
.super Lorg/chromium/chrome/browser/ChromeActivity;
.source "DocumentActivity.java"


# static fields
.field protected static final KEY_INITIAL_URL:Ljava/lang/String; = "DocumentActivity.KEY_INITIAL_URL"

.field public static final LEGACY_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.chrome.document.DocumentActivity"

.field public static final LEGACY_INCOGNITO_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.chrome.document.IncognitoDocumentActivity"

.field private static sIsFirstPageLoadStart:Z


# instance fields
.field private mDefaultThemeColor:I

.field private mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

.field private mIcon:Lorg/chromium/chrome/browser/document/DocumentActivityIcon;

.field private mLargestFavicon:Landroid/graphics/Bitmap;

.field private mNeedsToBeAddedToTabModel:Z

.field private mRecordedStartupUma:Z

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mTabInitializationObserver:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;

.field private mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/document/DocumentActivity;->sIsFirstPageLoadStart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lorg/chromium/chrome/browser/document/DocumentActivity;->sIsFirstPageLoadStart:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 85
    sput-boolean p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->sIsFirstPageLoadStart:Z

    return p0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->resetIcon()V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/document/DocumentActivity;Z)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->launchNtp(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/document/DocumentActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/document/DocumentActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->initializeUI()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    return-object v0
.end method

.method private createActivityTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 759
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->isAffiliated()Z

    move-result v1

    move v11, v1

    .line 760
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_2

    move v9, v0

    .line 762
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineTabId()I

    move-result v1

    .line 763
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "com.android.chrome.parent_tab_id"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 765
    iget-object v4, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getTabStateForDocument(I)Lorg/chromium/chrome/browser/TabState;

    move-result-object v8

    .line 766
    if-eqz v8, :cond_3

    move v10, v0

    .line 767
    :goto_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineLastKnownUrl()Ljava/lang/String;

    move-result-object v4

    .line 769
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    invoke-direct {p0, v4, v10, v11}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabLaunchType(Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v6

    invoke-direct {p0, v10, v11}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabCreationState(ZZ)Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    .line 774
    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    .line 775
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v2

    new-instance v3, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory;-><init>()V

    move v4, v11

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 777
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 778
    if-eqz v9, :cond_0

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->resumeLoadingCreatedWebContents()V

    .line 780
    :cond_0
    return-object v0

    :cond_1
    move v11, v3

    .line 759
    goto :goto_0

    :cond_2
    move v9, v3

    .line 760
    goto :goto_1

    :cond_3
    move v10, v3

    .line 766
    goto :goto_2

    .line 774
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private determineLastKnownUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineTabId()I

    move-result v1

    .line 385
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCurrentUrlForDocument(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineInitialUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    return-object v0
.end method

.method private getTabCreationState(ZZ)Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;
    .locals 1

    .prologue
    .line 788
    if-eqz p1, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 793
    :goto_0
    return-object v0

    .line 789
    :cond_0
    if-eqz p2, :cond_2

    .line 790
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    goto :goto_0

    .line 791
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    goto :goto_0

    .line 793
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    goto :goto_0
.end method

.method private getTabLaunchType(Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;
    .locals 1

    .prologue
    .line 798
    if-eqz p2, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 803
    :goto_0
    return-object v0

    .line 799
    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    goto :goto_0

    .line 800
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "chrome-native://newtab/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    goto :goto_0

    .line 803
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    goto :goto_0
.end method

.method private handleDocumentUma()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mRecordedStartupUma:Z

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordStartedBy(I)V

    .line 455
    :goto_0
    invoke-static {v2}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordInDocumentMode(Z)V

    .line 456
    return-void

    .line 447
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mRecordedStartupUma:Z

    .line 449
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordStartedBy(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 452
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordStartedBy(I)V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 568
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mIcon:Lorg/chromium/chrome/browser/document/DocumentActivityIcon;

    .line 569
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mDefaultThemeColor:I

    .line 573
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->remove(I)Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    move-result-object v1

    .line 576
    instance-of v0, v1, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    move-object v6, v0

    .line 578
    :goto_1
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->isAffiliated()Z

    move-result v0

    move v5, v0

    .line 579
    :goto_2
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_b

    move v2, v3

    .line 583
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    .line 584
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 586
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v8

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->maybeRewriteWebliteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/chromium/content_public/browser/LoadUrlParams;->setUrl(Ljava/lang/String;)V

    .line 591
    :cond_0
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 592
    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 593
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/document/DocumentTabDelegateFactory;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->reparentToActivity(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;)V

    .line 598
    :goto_4
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.chrome.parent_intent"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 601
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->setParentIntent(Landroid/content/Intent;)V

    .line 604
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 605
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->addTab(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 610
    :goto_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 612
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->didFailToRestore()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 614
    :cond_2
    if-nez v2, :cond_4

    .line 617
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v5, :cond_e

    .line 619
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 621
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineLastKnownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setUrl(Ljava/lang/String;)V

    .line 624
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1, v6}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->add(ILorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    .line 628
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 633
    :cond_4
    :goto_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.android.chrome.preserve_task"

    invoke-static {v1, v2, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setShouldPreserve(Z)V

    .line 637
    :cond_5
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    .line 642
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabledInDocumentMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 643
    new-instance v4, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    .line 645
    new-instance v1, Lorg/chromium/chrome/browser/document/DocumentActivity$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/document/DocumentActivity$4;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    invoke-virtual {v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->addOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V

    .line 681
    new-instance v6, Lorg/chromium/chrome/browser/document/DocumentActivity$5;

    invoke-direct {v6, p0}, Lorg/chromium/chrome/browser/document/DocumentActivity$5;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    move-object v5, v4

    .line 697
    :goto_7
    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v5, v2, v1, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->initializeCompositorContent(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Landroid/view/View;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/widget/ControlContainer;)V

    .line 700
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getActionModeController()Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->getActionModeCallback()Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/view/ActionMode$Callback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    .line 704
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 705
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->setFindToolbarManager(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)V

    .line 708
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    move-object v8, v7

    move-object v9, v7

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->initializeWithNative(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V

    .line 714
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;

    invoke-direct {v1, p0, v7}, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/document/DocumentActivity$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 716
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->removeWindowBackground()V

    .line 718
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_7

    .line 719
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->launchDataReductionSSLInfoBar(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    .line 722
    :cond_7
    return-void

    .line 569
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    move-object v6, v7

    .line 576
    goto/16 :goto_1

    :cond_a
    move v5, v4

    .line 578
    goto/16 :goto_2

    :cond_b
    move v2, v4

    .line 579
    goto/16 :goto_3

    .line 595
    :cond_c
    invoke-direct {p0, v6}, Lorg/chromium/chrome/browser/document/DocumentActivity;->createActivityTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_4

    .line 607
    :cond_d
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mNeedsToBeAddedToTabModel:Z

    goto/16 :goto_5

    .line 630
    :cond_e
    invoke-direct {p0, v6}, Lorg/chromium/chrome/browser/document/DocumentActivity;->loadLastKnownUrl(Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    goto/16 :goto_6

    .line 695
    :cond_f
    new-instance v5, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    move-object v6, v7

    move-object v4, v7

    goto/16 :goto_7
.end method

.method public static isDocumentActivity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 965
    const-class v0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.apps.chrome.document.DocumentActivity"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.apps.chrome.document.IncognitoDocumentActivity"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method private launchNtp(Z)V
    .locals 1

    .prologue
    .line 976
    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isIncognitoModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->launchNTP()V

    goto :goto_0
.end method

.method private loadLastKnownUrl(Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 506
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 507
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    .line 510
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/IntentHandler;->isIntentChromeOrFirstParty(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v3

    .line 512
    if-nez v1, :cond_4

    move v0, v2

    .line 515
    :goto_1
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v0, v2

    .line 522
    :cond_0
    if-nez v0, :cond_9

    .line 523
    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    move v3, v0

    .line 526
    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 529
    :goto_3
    if-nez p1, :cond_6

    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 531
    :goto_4
    invoke-virtual {v2, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 532
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getOnCreateTimestampUptimeMs()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIntentReceivedTimestamp(J)V

    .line 536
    :cond_1
    if-eqz v1, :cond_2

    .line 537
    invoke-static {v2, v1, p0}, Lorg/chromium/chrome/browser/IntentHandler;->addReferrerAndHeaders(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Landroid/content/Context;)V

    .line 540
    :cond_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 541
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateIntent(Landroid/content/Intent;)V

    .line 554
    :goto_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 555
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getRequestId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getRequestId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 557
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getRequestId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->onWebContentsForRequestAvailable(ILorg/chromium/content_public/browser/WebContents;)V

    .line 560
    :cond_3
    return-void

    .line 512
    :cond_4
    const-string/jumbo v0, "com.google.chrome.transition_type"

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_1

    .line 526
    :cond_5
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->determineLastKnownUrl()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    .line 529
    :cond_6
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 543
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "com.android.chrome.original_intent"

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 551
    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateIntent(Landroid/content/Intent;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    move v3, v0

    goto/16 :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private resetIcon()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    .line 726
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V

    .line 727
    return-void
.end method

.method private updateLastTabId()V
    .locals 2

    .prologue
    .line 730
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->selectModel(Z)V

    .line 731
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 733
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->setLastShownId(I)Z

    .line 734
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_0
.end method

.method private updateTaskDescription()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 894
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    .line 895
    invoke-direct {p0, v2, v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 921
    :goto_0
    return-void

    .line 899
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isNewTabPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_1

    .line 901
    invoke-direct {p0, v2, v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 905
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 906
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/util/UrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 910
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    invoke-direct {p0, v2, v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_3

    .line 917
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mIcon:Lorg/chromium/chrome/browser/document/DocumentActivityIcon;

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 920
    :goto_2
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private updateTaskDescription(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 924
    iget v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mDefaultThemeColor:I

    .line 925
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isDefaultThemeColor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v0

    .line 928
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 929
    return-void
.end method


# virtual methods
.method public createContextualSearchTab(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 808
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 810
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    .line 811
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createNewTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;I)V

    .line 813
    return-void
.end method

.method protected determineInitialUrl(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    if-eqz v1, :cond_0

    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getInitialUrlForDocument(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/NavigationController;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_2
    return-object v0
.end method

.method protected final determineTabId()I
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 375
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 376
    :cond_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 864
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    invoke-static {p1, p0, v0}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->dispatchKeyEvent(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishNativeInitialization()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isNewTabPage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getPromosSkippedOnFirstStart()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->launchSigninPromoIfNeeded(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->launchDataReductionPromo(Landroid/app/Activity;)V

    .line 329
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->start(Landroid/app/Activity;)V

    .line 331
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->hasAttemptedMigrationOnUpgrade()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentActivity$3;

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity$3;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V

    .line 351
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->runWhenReady()V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 358
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->onNativeLibraryReady()V

    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabInitializationObserver:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->runWhenReady()V

    .line 361
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mNeedsToBeAddedToTabModel:Z

    if-eqz v0, :cond_2

    .line 362
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mNeedsToBeAddedToTabModel:Z

    .line 363
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->addTab(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 364
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 367
    :cond_2
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->finishNativeInitialization()V

    .line 368
    return-void

    .line 325
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setPromosSkippedOnFirstStart(Z)V

    goto :goto_0
.end method

.method public final getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method protected getControlContainerLayoutId()I
    .locals 1

    .prologue
    .line 278
    sget v0, Lorg/chromium/chrome/R$layout;->control_container:I

    return v0
.end method

.method public bridge synthetic getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
    .locals 1

    .prologue
    .line 755
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    return-object v0
.end method

.method public getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;
    .locals 1

    .prologue
    .line 501
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    return-object v0
.end method

.method public bridge synthetic getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 738
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->exitFullscreenIfShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->goBack()V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->shouldPreserve()Z

    move-result v1

    if-nez v1, :cond_3

    .line 745
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method protected isIncognito()Z
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method isNewTabPage()Z
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 950
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 951
    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v2, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->hasEntryForTabId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v2, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isRetargetable(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 955
    :goto_0
    return v0

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 955
    :cond_1
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isNTPUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isStartedUpCorrectly(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 234
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v3

    .line 235
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 236
    :goto_0
    if-nez v0, :cond_0

    .line 237
    const-string/jumbo v4, "DocumentActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Discarding Intent: Tab = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", Document mode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 872
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 874
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2, p0, v1, v0}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->onKeyDown(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onMenuOrKeyboardAction(IZ)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0xaa

    const/4 v0, 0x1

    .line 817
    sget v1, Lorg/chromium/chrome/R$id;->new_tab_menu_id:I

    if-ne p1, v1, :cond_1

    .line 818
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/chromium/chrome/browser/document/DocumentActivity$6;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/document/DocumentActivity$6;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    const-string/jumbo v1, "MobileMenuNewTab"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 825
    const-string/jumbo v1, "MobileNewTabOpened"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    sget v1, Lorg/chromium/chrome/R$id;->new_incognito_tab_menu_id:I

    if-ne p1, v1, :cond_2

    .line 829
    const-string/jumbo v1, "MobileMenuNewIncognitoTab"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 830
    const-string/jumbo v1, "MobileNewTabOpened"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/chromium/chrome/browser/document/DocumentActivity$7;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/document/DocumentActivity$7;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 837
    :cond_2
    sget v1, Lorg/chromium/chrome/R$id;->all_bookmarks_menu_id:I

    if-ne p1, v1, :cond_3

    .line 838
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedBookmarks()V

    .line 839
    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showBookmarkManager(Landroid/app/Activity;)V

    .line 840
    const-string/jumbo v1, "MobileMenuAllBookmarks"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_3
    sget v1, Lorg/chromium/chrome/R$id;->recent_tabs_menu_id:I

    if-ne p1, v1, :cond_4

    .line 842
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->launchRecentTabsDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 843
    const-string/jumbo v1, "MobileMenuOpenTabs"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_4
    sget v1, Lorg/chromium/chrome/R$id;->find_in_page_id:I

    if-ne p1, v1, :cond_7

    .line 845
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->showToolbar()V

    .line 846
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 847
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 849
    :cond_5
    if-eqz p2, :cond_6

    .line 850
    const-string/jumbo v1, "MobileMenuFindInPage"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_6
    const-string/jumbo v1, "MobileShortcutFindInPage"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_7
    sget v1, Lorg/chromium/chrome/R$id;->focus_url_bar:I

    if-ne p1, v1, :cond_8

    .line 855
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setUrlBarFocus(Z)V

    goto :goto_0

    .line 857
    :cond_8
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onPause()V

    .line 463
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->suspendAllMediaPlayers()V

    .line 465
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setAudioMuted(Z)V

    .line 467
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 477
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onResume()V

    .line 479
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getTaskId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentUtils;->finishOtherTasksWithTabID(II)Landroid/content/Intent;

    .line 483
    :cond_0
    return-void
.end method

.method public onResumeWithNative()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onResumeWithNative()V

    .line 489
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->remove(I)Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->loadLastKnownUrl(Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    .line 496
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordHistogram(Z)V

    .line 497
    return-void
.end method

.method public onStartWithNative()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStartWithNative()V

    .line 433
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->handleDocumentUma()V

    .line 434
    return-void
.end method

.method public onStopWithNative()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStopWithNative()V

    .line 439
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordHistogram(Z)V

    .line 440
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 471
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onWindowFocusChanged(Z)V

    .line 472
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateLastTabId()V

    .line 473
    :cond_0
    return-void
.end method

.method public postInflationStartup()V
    .locals 3

    .prologue
    .line 283
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->postInflationStartup()V

    .line 285
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 286
    new-instance v1, Lorg/chromium/chrome/browser/document/DocumentActivity$2;

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-direct {v1, p0, v2, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity$2;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabInitializationObserver:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;

    .line 303
    return-void
.end method

.method public preInflationStartup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {v3}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->setRunningApplicationStart(Z)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->setPrioritizedTabId(I)V

    .line 254
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    .line 255
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->startTabStateLoad()V

    .line 256
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->updateLastTabId()V

    .line 258
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentActivity$1;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v1

    invoke-direct {v0, p0, p0, v1, v2}, Lorg/chromium/chrome/browser/document/DocumentActivity$1;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Landroid/app/Activity;ZZ)V

    .line 267
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 268
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->setTabCreators(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V

    .line 271
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->preInflationStartup()V

    .line 273
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->supportRequestWindowFeature(I)Z

    .line 274
    return-void
.end method

.method public prepareMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isNewTabPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    sget v0, Lorg/chromium/chrome/R$id;->new_tab_menu_id:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    :cond_0
    return-void
.end method

.method public shouldShowAppMenu()Z
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 881
    :cond_0
    const/4 v0, 0x0

    .line 884
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->shouldShowAppMenu()Z

    move-result v0

    goto :goto_0
.end method

.method protected showAppMenuForKeyboardEvent()V
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->showAppMenuForKeyboardEvent()V

    goto :goto_0
.end method

.method public terminateIncognitoSession()V
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->closeAllTabs()V

    .line 565
    return-void
.end method
