.class public Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;
.super Landroid/support/v7/app/C;
.source "FirstRunActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;


# static fields
.field public static final COMING_FROM_CHROME_ICON:Ljava/lang/String; = "ComingFromChromeIcon"

.field public static final RESULT_CLOSE_APP:Ljava/lang/String; = "Close App"

.field public static final RESULT_SHOW_SYNC_SETTINGS:Ljava/lang/String; = "ResultShowSyncSettings"

.field public static final RESULT_SIGNIN_ACCOUNT_NAME:Ljava/lang/String; = "ResultSignInTo"

.field static final SHOW_DATA_REDUCTION_PAGE:Ljava/lang/String; = "ShowDataReduction"

.field static final SHOW_SIGNIN_PAGE:Ljava/lang/String; = "ShowSignIn"

.field static final SHOW_WELCOME_PAGE:Ljava/lang/String; = "ShowWelcome"

.field protected static final TAG:Ljava/lang/String; = "FirstRunActivity"

.field public static final USE_FRE_FLOW_SEQUENCER:Ljava/lang/String; = "UseFreFlowSequencer"

.field static sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;


# instance fields
.field private mFreProperties:Landroid/os/Bundle;

.field private mNativeSideIsInitialized:Z

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

.field private mPages:Ljava/util/List;

.field private mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

.field private mResultShowSyncSettings:Z

.field private mResultSignInAccountName:Ljava/lang/String;

.field private mShowWelcomePage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/FirstRunGlueImpl;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlueImpl;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mShowWelcomePage:Z

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mShowWelcomePage:Z

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->createPageSequence()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;)Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->stopProgressionIfNotAcceptedTermsOfService()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->skipPagesIfNecessary()V

    return-void
.end method

.method private createPageSequence()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;

    .line 105
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mShowWelcomePage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;

    const-class v1, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->pageOf(Ljava/lang/Class;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "ShowDataReduction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;

    const-class v1, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;

    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->pageOf(Ljava/lang/Class;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "ShowSignIn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;

    const-class v1, Lorg/chromium/chrome/browser/firstrun/AccountFirstRunFragment;

    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->pageOf(Ljava/lang/Class;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    return-void
.end method

.method private static finishAllFREActivities(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 361
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 363
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 364
    instance-of v2, v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 366
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 369
    :cond_1
    return-void
.end method

.method private initializeBrowserProcess()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 413
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mNativeSideIsInitialized:Z
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string/jumbo v1, "FirstRunActivity"

    const-string/jumbo v2, "Unable to load native library."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->abortFirstRunExperience()V

    goto :goto_0
.end method

.method private jumpToPage(IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mShowWelcomePage:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->didAcceptTermsOfService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 379
    goto :goto_0

    .line 381
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 382
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->completeFirstRunExperience()V

    move v0, v1

    .line 383
    goto :goto_0

    .line 385
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    goto :goto_0
.end method

.method public static pageOf(Ljava/lang/Class;)Ljava/util/concurrent/Callable;
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$2;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private skipPagesIfNecessary()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    if-nez v0, :cond_1

    .line 404
    :cond_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    move v1, v0

    .line 398
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;

    .line 400
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->shouldSkipPageOnCreate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->jumpToPage(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    move v1, v0

    .line 403
    goto :goto_0
.end method

.method private stopProgressionIfNotAcceptedTermsOfService()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mShowWelcomePage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->didAcceptTermsOfService()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->setStopAtTheFirstPage(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abortFirstRunExperience()V
    .locals 3

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    :cond_0
    const-string/jumbo v1, "Close App"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->finishAllFREActivities(ILandroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public acceptSignIn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public acceptTermsOfService(Z)V
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;->acceptTermsOfService(Landroid/content/Context;Z)V

    .line 346
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->flushPersistentData()V

    .line 347
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->stopProgressionIfNotAcceptedTermsOfService()V

    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->jumpToPage(IZ)Z

    .line 349
    return-void
.end method

.method public advanceToNextPage()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->jumpToPage(IZ)Z

    .line 236
    return-void
.end method

.method public askToOpenSyncSettings()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultShowSyncSettings:Z

    .line 331
    return-void
.end method

.method public completeFirstRunExperience()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;->isDefaultAccountName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 257
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultShowSyncSettings:Z

    if-eqz v2, :cond_3

    .line 258
    if-eqz v0, :cond_2

    .line 259
    const/4 v0, 0x0

    .line 270
    :goto_0
    const-string/jumbo v2, "MobileFre.SignInChoice"

    invoke-static {v2, v0, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 273
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    const-string/jumbo v3, "ComingFromChromeIcon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, ".MainIntent"

    .line 275
    :goto_1
    sget-object v3, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;->numberOfAccounts(Landroid/content/Context;)I

    move-result v3

    .line 277
    if-nez v3, :cond_6

    .line 278
    const-string/jumbo v1, ".ZeroAccounts"

    .line 284
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MobileFre.SignInChoice"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "ResultSignInTo"

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "ResultShowSyncSettings"

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultShowSyncSettings:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->markFlowAsCompleted(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getDisplayedDataReductionPromo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 295
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyUIAction(I)V

    .line 303
    :cond_1
    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 305
    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->finishAllFREActivities(ILandroid/content/Intent;)V

    .line 306
    return-void

    :cond_2
    move v0, v1

    .line 261
    goto :goto_0

    .line 264
    :cond_3
    if-eqz v0, :cond_4

    .line 265
    const/4 v0, 0x2

    goto :goto_0

    .line 267
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 273
    :cond_5
    const-string/jumbo v2, ".ViewIntent"

    goto :goto_1

    .line 279
    :cond_6
    if-ne v3, v1, :cond_7

    .line 280
    const-string/jumbo v1, ".OneAccount"

    goto :goto_2

    .line 282
    :cond_7
    const-string/jumbo v1, ".ManyAccounts"

    goto :goto_2

    .line 298
    :cond_8
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyUIAction(I)V

    goto :goto_3
.end method

.method public didAcceptTermsOfService()Z
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;->didAcceptTermsOfService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected flushPersistentData()V
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mNativeSideIsInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->flushPersistentData()V

    .line 358
    :cond_0
    return-void
.end method

.method public getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    return-object v0
.end method

.method public isNeverUploadCrashDump()Z
    .locals 2

    .prologue
    .line 340
    sget-object v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;->isNeverUploadCrashDump(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->abortFirstRunExperience()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;

    if-eqz v1, :cond_2

    .line 215
    check-cast v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;

    .line 216
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->interceptBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 220
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->abortFirstRunExperience()V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->initializeBrowserProcess()V

    .line 124
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->setFinishOnTouchOutside(Z)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    .line 135
    :goto_0
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    sget v1, Lorg/chromium/chrome/R$id;->fre_pager:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->setContentView(Landroid/view/View;)V

    .line 139
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->setProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 141
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    invoke-direct {v0, p0, p0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;-><init>(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->start()V

    .line 172
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/support/v7/app/C;->onDestroy()V

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->destroy()V

    .line 190
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v7/app/C;->onPause()V

    .line 183
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->flushPersistentData()V

    .line 184
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public onSigninDialogShown()V
    .locals 1

    .prologue
    .line 310
    const-string/jumbo v0, "MobileFre.SignInShown"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "Signin_Impression_FromStartPage"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->logSigninStartAccessPoint(I)V

    .line 313
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v7/app/C;->onStart()V

    .line 195
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->stopProgressionIfNotAcceptedTermsOfService()V

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "UseFreFlowSequencer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->completeFirstRunExperience()V

    .line 203
    :cond_0
    return-void
.end method

.method public openAccountAdder(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->sGlue:Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunGlue;->openAccountAdder(Landroid/app/Fragment;)V

    .line 354
    return-void
.end method

.method public recreateCurrentPage()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method public refuseSignIn()V
    .locals 3

    .prologue
    .line 317
    const-string/jumbo v0, "MobileFre.SignInChoice"

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultShowSyncSettings:Z

    .line 321
    return-void
.end method

.method public showEmbedContentViewActivity(II)V
    .locals 0

    .prologue
    .line 439
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;II)V

    .line 440
    return-void
.end method
