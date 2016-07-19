.class public Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;
.super Lorg/chromium/chrome/browser/ChromeActivity;
.source "CustomTabActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final RESULT_BACK_PRESSED:I = 0x1

.field public static final RESULT_CLOSED:I = 0x3

.field public static final RESULT_STOPPED:I = 0x2

.field private static sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;


# instance fields
.field private mCustomTabContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

.field private mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

.field private mHasCreatedTabEarly:Z

.field private mHasPrerendered:Z

.field private mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

.field private mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mPrerenderedUrl:Ljava/lang/String;

.field private mRecordedStartupUma:Z

.field private mSession:Landroid/os/IBinder;

.field private mShouldOverridePackage:Z

.field private mShouldReplaceCurrentEntry:Z

.field private mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mTabObserver:Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;-><init>()V

    .line 107
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$1;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabObserver:Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->isHerbResultNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->createHerbResultIntent(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->loadUrlInTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/IntentHandler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->showCustomButtonOnToolbar()V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->updateBottomBarButton(Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V

    return-void
.end method

.method private createHerbResultIntent(I)V
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 831
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 833
    packed-switch p1, :pswitch_data_0

    .line 845
    sget-boolean v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 836
    :pswitch_0
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 848
    :cond_1
    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createMainTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v12

    .line 355
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v12, v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->overrideUrlIfNecessary(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 358
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/IntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 359
    if-nez v0, :cond_3

    .line 360
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v12, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 363
    :goto_1
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/TabIdManager;->generateValidId(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    sget-object v6, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-object v4, p0

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    .line 366
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v12, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getClientPackageNameForSession(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setAppAssociatedWith(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v12, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getPrerenderedUrl(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mPrerenderedUrl:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v12, v1, v9, v10}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->takePrerenderedUrl(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v5

    .line 371
    if-eqz v5, :cond_2

    move v1, v11

    :goto_2
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mHasPrerendered:Z

    .line 372
    if-nez v5, :cond_0

    .line 373
    invoke-virtual {v12}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->takeSpareWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v5

    .line 375
    if-eqz v5, :cond_0

    iput-boolean v11, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldReplaceCurrentEntry:Z

    .line 377
    :cond_0
    if-nez v5, :cond_1

    .line 378
    invoke-static {v3, v3}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v5

    .line 380
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v6

    new-instance v7, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldEnableUrlBarHiding()Z

    move-result v1

    invoke-direct {v7, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;-><init>(Z)V

    move-object v4, v0

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 383
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateIntent(Landroid/content/Intent;)V

    .line 384
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 385
    new-instance v1, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;-><init>(Landroid/app/Application;Landroid/os/IBinder;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabObserver:Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;

    .line 386
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabObserver:Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 387
    return-object v0

    :cond_2
    move v1, v3

    .line 371
    goto :goto_2

    :cond_3
    move-object v10, v0

    goto :goto_1

    :cond_4
    move-object v9, v0

    goto/16 :goto_0
.end method

.method public static handleInActiveContentIfNeeded(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-interface {v1, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->shouldIgnoreIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const-string/jumbo v1, "CustomTabActivity"

    const-string/jumbo v2, "Incoming intent to Custom Tab was ignored."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string/jumbo v1, "android.support.customtabs.extra.SESSION"

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBinderExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    sget-object v2, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->getSession()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {p0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v2, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/chromium/chrome/browser/IntentHandler;->getTimestampFromIntent(Landroid/content/Intent;)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->loadUrlAndTrackFromTimestamp(Lorg/chromium/content_public/browser/LoadUrlParams;J)V

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHerbResultNeeded()Z
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Dill"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    const/4 v0, 0x0

    .line 823
    :goto_0
    return v0

    .line 821
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 823
    :goto_1
    const-class v1, Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 821
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private loadUrlInTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mHasPrerendered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mPrerenderedUrl:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->urlsFragmentsDiffer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mHasPrerendered:Z

    .line 447
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mPrerenderedUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-static {v1, v0, p0}, Lorg/chromium/chrome/browser/IntentHandler;->addReferrerAndHeaders(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Landroid/content/Context;)V

    .line 449
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 450
    invoke-virtual {p2, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setShouldReplaceCurrentEntry(Z)V

    .line 453
    :cond_0
    invoke-static {p2, v0, p0}, Lorg/chromium/chrome/browser/IntentHandler;->addReferrerAndHeaders(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Landroid/content/Context;)V

    .line 454
    invoke-virtual {p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 455
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 460
    :cond_1
    const/high16 v0, 0x8000000

    invoke-virtual {p2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 461
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabObserver:Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->trackNextPageLoadFromTimestamp(J)V

    .line 462
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldReplaceCurrentEntry:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setShouldReplaceCurrentEntry(Z)V

    .line 463
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldReplaceCurrentEntry:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/chromium/content_public/browser/NavigationController;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    if-nez v0, :cond_3

    .line 468
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$5;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;)V

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 480
    :goto_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldReplaceCurrentEntry:Z

    .line 481
    return-void

    .line 478
    :cond_3
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method private recordClientPackageName()V
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getClientPackageNameForSession(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    new-instance v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$4;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$4;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setActiveContentHandler(Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;)V
    .locals 0

    .prologue
    .line 119
    sput-object p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    .line 120
    return-void
.end method

.method private showBottomBarIfNecessary()V
    .locals 5

    .prologue
    .line 605
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldShowBottomBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    sget v0, Lorg/chromium/chrome/R$id;->bottombar_stub:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 608
    sget v1, Lorg/chromium/chrome/R$layout;->custom_tabs_bottombar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 609
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 611
    sget v0, Lorg/chromium/chrome/R$id;->bottombar_shadow:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 612
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    sget v0, Lorg/chromium/chrome/R$id;->bottombar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 615
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getBottomBarRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 616
    if-eqz v1, :cond_2

    .line 618
    invoke-virtual {v1, p0, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 619
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 621
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getBottomBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 622
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getCustomButtonsOnBottombar()Ljava/util/List;

    move-result-object v1

    .line 623
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    .line 624
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->showOnToolbar()Z

    move-result v2

    if-nez v2, :cond_3

    .line 625
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 626
    const/4 v2, 0x0

    .line 627
    if-eqz v4, :cond_4

    .line 628
    new-instance v2, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;

    invoke-direct {v2, p0, v4}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Landroid/app/PendingIntent;)V

    .line 643
    :cond_4
    invoke-virtual {v1, p0, v0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->buildBottomBarButton(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 644
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private showCustomButtonOnToolbar()V
    .locals 5

    .prologue
    .line 566
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getCustomButtonOnToolbar()Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    move-result-object v0

    .line 567
    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getDescription()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;

    invoke-direct {v4, p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateBottomBarButton(Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V
    .locals 2

    .prologue
    .line 594
    sget v0, Lorg/chromium/chrome/R$id;->bottombar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 595
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 596
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    return-void
.end method

.method static updateCustomButton(Landroid/os/IBinder;ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 156
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->getSession()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static updateRemoteViews(Landroid/os/IBinder;Landroid/widget/RemoteViews;)Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 170
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->getSession()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->sActiveContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;->updateRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected createAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    .locals 6

    .prologue
    .line 503
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getMenuTitles()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldShowShareMenuItem()Z

    move-result v3

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldShowBookmarkMenuItem()Z

    move-result v4

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->isOpenedByChrome()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Ljava/util/List;ZZZ)V

    return-object v0
.end method

.method public createContextualSearchTab(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    invoke-static {p1, p0, v0}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->dispatchKeyEvent(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 676
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

.method public finish()V
    .locals 2

    .prologue
    .line 532
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->finish()V

    .line 533
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldAnimateOnFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldOverridePackage:Z

    .line 535
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getAnimationEnterRes()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getAnimationExitRes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->overridePendingTransition(II)V

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldOverridePackage:Z

    .line 539
    :cond_0
    return-void
.end method

.method public finishNativeInitialization()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v10

    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v10, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->cancelPrerender(Landroid/os/IBinder;)V

    .line 254
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mHasCreatedTabEarly:Z

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->attachTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 261
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 262
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    .line 264
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    .line 266
    new-instance v5, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    .line 267
    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v5, v2, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->initializeCompositorContent(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Landroid/view/View;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/widget/ControlContainer;)V

    .line 269
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getActionModeController()Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->getActionModeCallback()Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/view/ActionMode$Callback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    .line 271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->setFindToolbarManager(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    new-instance v9, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;

    invoke-direct {v9, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->initializeWithNative(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V

    .line 288
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;

    invoke-direct {v0, p0, v10}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mCustomTabContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    .line 337
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v10, v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->overrideUrlIfNecessary(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v10, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getClientPackageNameForSession(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->onCustomTabInitialNavigation(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->recordClientPackageName()V

    .line 342
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->showSignInToastIfNecessary(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 343
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mHasCreatedTabEarly:Z

    if-eqz v1, :cond_5

    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->postDeferredStartupIfNeeded()V

    .line 349
    :cond_3
    :goto_1
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->finishNativeInitialization()V

    .line 350
    return-void

    .line 259
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->createMainTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_0

    .line 346
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getTimestampFromIntent(Landroid/content/Intent;)J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->loadUrlInTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V

    goto :goto_1
.end method

.method public getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 497
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 498
    :cond_0
    return-object v0
.end method

.method protected getAppMenuLayoutId()I
    .locals 1

    .prologue
    .line 511
    sget v0, Lorg/chromium/chrome/R$menu;->custom_tabs_menu:I

    return v0
.end method

.method public bridge synthetic getAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;
    .locals 1

    .prologue
    .line 730
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;

    return-object v0
.end method

.method public getControlContainerHeightResource()I
    .locals 1

    .prologue
    .line 521
    sget v0, Lorg/chromium/chrome/R$dimen;->custom_tabs_control_container_height:I

    return v0
.end method

.method protected getControlContainerLayoutId()I
    .locals 1

    .prologue
    .line 516
    sget v0, Lorg/chromium/chrome/R$layout;->custom_tabs_control_container:I

    return v0
.end method

.method getIntentDataProvider()Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mShouldOverridePackage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    return-object v0
.end method

.method public getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 543
    const-string/jumbo v2, "CustomTabs.SystemBack"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-nez v2, :cond_0

    .line 559
    :goto_0
    return v0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->exitFullscreenIfShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->back()Z

    move-result v2

    if-nez v2, :cond_2

    .line 550
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 551
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-interface {v2, v3, v0, v0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    :cond_2
    :goto_1
    move v0, v1

    .line 559
    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->isOpenedByChrome()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->isHerbResultNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->createHerbResultIntent(I)V

    .line 556
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->finish()V

    goto :goto_1
.end method

.method public initializeCompositor()V
    .locals 2

    .prologue
    .line 392
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->initializeCompositor()V

    .line 393
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->onNativeLibraryReady(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 394
    return-void
.end method

.method public isCustomTab()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckForUpdate(Z)V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 684
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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 691
    sget v1, Lorg/chromium/chrome/R$id;->focus_url_bar:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->all_bookmarks_menu_id:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->print_id:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->help_id:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->recent_tabs_menu_id:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->new_incognito_tab_menu_id:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->new_tab_menu_id:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/chromium/chrome/R$id;->open_history_menu_id:I

    if-ne p1, v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    sget v1, Lorg/chromium/chrome/R$id;->bookmark_this_page_id:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldShowBookmarkMenuItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    :cond_2
    sget v1, Lorg/chromium/chrome/R$id;->open_in_browser_id:I

    if-ne p1, v1, :cond_3

    .line 700
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->openCurrentUrlInBrowser()Z

    .line 701
    const-string/jumbo v1, "CustomTabsMenuOpenInChrome"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_3
    sget v1, Lorg/chromium/chrome/R$id;->find_in_page_id:I

    if-ne p1, v1, :cond_6

    .line 704
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->showToolbar()V

    .line 705
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 706
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 708
    :cond_4
    if-eqz p2, :cond_5

    .line 709
    const-string/jumbo v1, "MobileMenuFindInPage"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_5
    const-string/jumbo v1, "MobileShortcutFindInPage"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabAppMenuPropertiesDelegate;->getIndexOfMenuItem(Landroid/view/MenuItem;)I

    move-result v0

    .line 663
    if-ltz v0, :cond_0

    .line 664
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->clickMenuItemWithUrl(Lorg/chromium/chrome/browser/ChromeActivity;ILjava/lang/String;)V

    .line 666
    const-string/jumbo v0, "CustomTabsMenuCustomMenuItem"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPauseWithNative()V
    .locals 3

    .prologue
    .line 427
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onPauseWithNative()V

    .line 428
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    .line 430
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStart()V

    .line 184
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getSession()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getKeepAliveServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->keepAliveForSession(Landroid/os/IBinder;Landroid/content/Intent;)Z

    .line 187
    return-void
.end method

.method public onStartWithNative()V
    .locals 3

    .prologue
    .line 413
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStartWithNative()V

    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mCustomTabContentHandler:Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->setActiveContentHandler(Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;)V

    .line 416
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mRecordedStartupUma:Z

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mRecordedStartupUma:Z

    .line 418
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/IntentHandler;->determineExternalIntentSource(Ljava/lang/String;Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    move-result-object v0

    .line 420
    const-string/jumbo v1, "CustomTabs.ClientAppId"

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->ordinal()I

    move-result v0

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->INDEX_BOUNDARY:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->ordinal()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 423
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->isOpenedByChrome()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->isHerbResultNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->createHerbResultIntent(I)V

    .line 197
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->finish()V

    .line 200
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStop()V

    .line 201
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getSession()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->dontKeepAliveForSession(Landroid/os/IBinder;)V

    .line 203
    return-void
.end method

.method public onStopWithNative()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStopWithNative()V

    .line 435
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->setActiveContentHandler(Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;)V

    .line 436
    return-void
.end method

.method openCurrentUrlInBrowser()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 810
    :goto_0
    return v0

    .line 754
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-static {v0}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    invoke-static {v0}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 759
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 760
    const-string/jumbo v0, "org.chromium.chrome.browser.document.IS_ALLOWED_TO_RETURN_TO_PARENT"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntentDataProvider()Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->isOpenedByChrome()Z

    move-result v0

    .line 763
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 764
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 766
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0, v3, v5}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->willChromeHandleIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    or-int/2addr v0, v5

    .line 769
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 772
    if-eqz v0, :cond_4

    .line 773
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isLocalBuild()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isCanaryBuild()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isDevBuild()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TabReparenting"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Enabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 778
    :cond_3
    if-eqz v1, :cond_4

    .line 780
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 784
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 785
    iput-object v6, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 786
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/chromium/content/browser/ContentViewCore;->updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 787
    invoke-virtual {v0, v6}, Lorg/chromium/chrome/browser/tab/Tab;->attachTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 789
    new-instance v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$8;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$8;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V

    .line 795
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    new-instance v6, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;

    invoke-direct {v6, v0, v3, v1}, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;Ljava/lang/Runnable;)V

    invoke-static {v5, v6}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->add(ILorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    .line 797
    const-string/jumbo v1, "com.android.chrome.tab_id"

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 803
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 805
    :try_start_1
    sget v0, Lorg/chromium/chrome/R$anim;->abc_fade_in:I

    sget v1, Lorg/chromium/chrome/R$anim;->abc_fade_out:I

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/d;->a(Landroid/content/Context;II)Landroid/support/v4/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/d;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v0, v2

    .line 810
    goto/16 :goto_0

    .line 769
    :catchall_0
    move-exception v0

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 808
    :catchall_1
    move-exception v0

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public postInflationStartup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->postInflationStartup()V

    .line 222
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getSession()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    .line 223
    new-instance v2, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;ILorg/chromium/ui/base/WindowAndroid;Z)V

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 225
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setCloseButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getTitleVisibilityState()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setShowTitle(Z)V

    .line 228
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->shouldHideDomainForSession(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setUrlBarHidden(Z)V

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getToolbarColor()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updatePrimaryColor(I)V

    .line 234
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 236
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/ColorUtils;->getDarkenedColorForStatusBar(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 241
    :cond_2
    invoke-static {p0, v5, v5, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 242
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->showCustomButtonOnToolbar()V

    .line 243
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->showBottomBarIfNecessary()V

    .line 244
    return-void
.end method

.method public preInflationStartup()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->preInflationStartup()V

    .line 208
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getSession()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;

    .line 210
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->supportRequestWindowFeature(I)Z

    .line 211
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->hasWarmUpBeenFinished(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->createMainTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mMainTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/IntentHandler;->getTimestampFromIntent(Landroid/content/Intent;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->loadUrlInTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mHasCreatedTabEarly:Z

    .line 217
    :cond_0
    return-void
.end method

.method protected setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public shouldShowAppMenu()Z
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showAppMenuForKeyboardEvent()V
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->shouldShowAppMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->showAppMenuForKeyboardEvent()V

    goto :goto_0
.end method
