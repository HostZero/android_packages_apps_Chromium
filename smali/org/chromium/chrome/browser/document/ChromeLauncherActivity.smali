.class public Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;
.super Landroid/app/Activity;
.source "ChromeLauncherActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ACTION_CLOSE_ALL_INCOGNITO:Ljava/lang/String; = "com.google.android.apps.chrome.document.CLOSE_ALL_INCOGNITO"

.field public static final EXTRA_IS_ALLOWED_TO_RETURN_TO_PARENT:Ljava/lang/String; = "org.chromium.chrome.browser.document.IS_ALLOWED_TO_RETURN_TO_PARENT"

.field public static final EXTRA_LAUNCH_MODE:Ljava/lang/String; = "com.google.android.apps.chrome.EXTRA_LAUNCH_MODE"

.field public static final LAUNCH_MODE_AFFILIATED:I = 0x1

.field public static final LAUNCH_MODE_FOREGROUND:I = 0x0

.field public static final LAUNCH_MODE_RETARGET:I = 0x2

.field private static final sIntentFlagsHistogram:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;

.field private static final sMoveToFrontExceptionHistogram:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;


# instance fields
.field private mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

.field private mIsCustomTabIntent:Z

.field private mIsFinishDelayed:Z

.field private mIsHerbIntent:Z

.field private mIsInMultiInstanceMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    .line 126
    new-instance v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;

    const-string/jumbo v1, "DocumentActivity.MoveToFrontFailed"

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->sMoveToFrontExceptionHistogram:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;

    .line 128
    new-instance v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;

    const-string/jumbo v1, "Launch.IntentFlags"

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->sIntentFlagsHistogram:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsFinishDelayed:Z

    return v0
.end method

.method public static addHerbIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_open_in_chrome:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 369
    const-string/jumbo v2, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 373
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    const-string/jumbo v2, "org.chromium.chrome.browser.document.IS_ALLOWED_TO_RETURN_TO_PARENT"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 378
    const-string/jumbo v2, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    sget v1, Lorg/chromium/chrome/R$string;->menu_open_in_product:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/chromium/base/BuildInfo;->getPackageLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 382
    const-string/jumbo v2, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v0, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const-string/jumbo v0, "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    const-string/jumbo v0, "org.chromium.chrome.browser.customtabs.SHOW_STAR_ICON"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    invoke-static {p1, p0}, Lorg/chromium/chrome/browser/IntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;Landroid/content/Context;)V

    .line 391
    return-void
.end method

.method public static canBeHijackedByHerb(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-static {p0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 305
    if-eqz p0, :cond_0

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.browser.application_id"

    invoke-static {p0, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    :try_start_0
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 320
    invoke-static {v1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isInternalScheme(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCustomTabsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private cleanUpChromeRecents(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 867
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 868
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v3

    .line 869
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move v1, v2

    .line 870
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 871
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 872
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskClassName(Landroid/app/ActivityManager$AppTask;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 873
    if-eqz v5, :cond_0

    .line 875
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    .line 876
    if-eqz v6, :cond_0

    .line 879
    if-nez p1, :cond_1

    invoke-static {v5}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isDocumentActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 880
    :goto_1
    if-nez v0, :cond_0

    iget v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getTaskId()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 881
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    .line 870
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 879
    goto :goto_1

    .line 884
    :cond_2
    return-void
.end method

.method private clobberCurrentDocument(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "create_new_tab"

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 548
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.android.browser.application_id"

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getCurrentTabId()I

    move-result v1

    .line 554
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 557
    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/high16 v3, 0x8000000

    invoke-direct {v2, p1, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 559
    invoke-virtual {v2, p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setHasUserGesture(Z)V

    .line 560
    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {v3, v2, v4}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;)V

    .line 562
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->add(ILorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    .line 563
    invoke-static {v1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->relaunchTask(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 565
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->remove(I)Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    goto :goto_0

    .line 569
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createCustomTabActivityIntent(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 414
    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 416
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 417
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-class v2, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 420
    if-eqz p2, :cond_0

    invoke-static {p0, v1, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->addHerbIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 422
    :cond_0
    return-object v1
.end method

.method private static createLaunchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 749
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->generateValidTabId()I

    move-result v1

    .line 752
    if-nez p1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 753
    :goto_0
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-static {p3}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getDocumentClassName(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-static {v1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->createDocumentDataString(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 757
    if-nez p3, :cond_0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->isIntentTooLarge(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    :cond_0
    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->createDocumentDataString(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 765
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v1, "content://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 768
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 770
    :cond_2
    const-string/jumbo v1, "com.android.chrome.parent_tab_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    if-eqz p1, :cond_3

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 772
    const-string/jumbo v1, "com.android.chrome.original_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 775
    :cond_3
    return-object v0

    .line 752
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static fireDocumentIntent(Landroid/content/Context;Landroid/content/Intent;ZZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 675
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 676
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 678
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 682
    :cond_2
    instance-of v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z

    if-eqz v0, :cond_3

    .line 684
    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v3

    move-object v0, p0

    check-cast v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v3, v0, p1}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->makeMultiInstanceIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 693
    :cond_3
    invoke-static {p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v4

    .line 694
    invoke-static {v4}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->hasParamsForTabId(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 695
    invoke-static {v4, p4}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->add(ILorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    .line 698
    :cond_4
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_6

    move v3, v1

    .line 700
    :goto_0
    const/4 v0, 0x0

    .line 701
    if-eqz p3, :cond_5

    if-nez v3, :cond_5

    .line 702
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 703
    invoke-virtual {p4, v1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setIsAffiliated(Z)V

    .line 707
    :cond_5
    if-eqz p2, :cond_7

    :try_start_0
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/crypto/CipherFactory;->hasCipher()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 711
    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/document/CipherKeyActivity;->createIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 712
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v0, v1

    .line 726
    :goto_2
    return v0

    :cond_6
    move v3, v2

    .line 698
    goto :goto_0

    .line 714
    :cond_7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_8

    .line 718
    const-string/jumbo v0, "document_CLActivity"

    const-string/jumbo v1, "Failed to launch DocumentActivity because Intent was too large"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    invoke-static {v4}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->remove(I)Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    .line 720
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->destroy()V

    move v0, v2

    .line 721
    goto :goto_2

    .line 723
    :cond_8
    throw v0
.end method

.method static getDocumentClassName(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    if-eqz p0, :cond_0

    const-class v0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRemoveAllIncognitoTabsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 736
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.apps.chrome.document.CLOSE_ALL_INCOGNITO"

    const/4 v2, 0x0

    const-class v3, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleDocumentActivityIntent()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/chromium/chrome/browser/IntentHandler;->shouldIgnoreIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    :cond_0
    const-string/jumbo v1, "document_CLActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ignoring intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsFinishDelayed:Z

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->maybePrefetchDnsInBackground()V

    .line 451
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->updateIntent(Landroid/content/Intent;)V

    .line 453
    invoke-static {}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->getInstance()Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->getUserGestureAndClear(Landroid/content/Intent;)Z

    move-result v1

    .line 459
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getTaskId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/tab/TabIdManager;->incrementIdCounterTo(I)V

    .line 464
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 465
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 467
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->handleMainDocumentIntent()V

    goto :goto_0

    .line 472
    :cond_5
    invoke-direct {p0, v2, v1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->clobberCurrentDocument(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-static {v1, v3, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 477
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.android.chrome.append_task"

    invoke-static {v3, v4, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    .line 479
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    invoke-static {v4, v5, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    .line 481
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "com.android.chrome.open_with_affiliation"

    invoke-static {v5, v6, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v5

    .line 485
    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 486
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "org.chromium.chrome.browser.webapp_source"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 488
    invoke-static {v2, v4}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->recordHomeScreenLaunchIntoTab(Ljava/lang/String;I)V

    .line 489
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->relaunchTask(ZLjava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 494
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v4, v6, v2, v1, v7}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->createLaunchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v4

    .line 496
    if-eqz v3, :cond_7

    :goto_1
    invoke-static {v4, v0, v1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->setRecentsFlagsOnIntent(Landroid/content/Intent;IZ)V

    .line 498
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v3, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 499
    invoke-static {p0, v4, v1, v5, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->fireDocumentIntent(Landroid/content/Context;Landroid/content/Intent;ZZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)Z

    goto/16 :goto_0

    .line 496
    :cond_7
    const/high16 v0, 0x80000

    goto :goto_1
.end method

.method private handleMainDocumentIntent()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 510
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 512
    if-eq v0, v2, :cond_1

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->relaunchTask(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchLastViewedActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsFinishDelayed:Z

    .line 521
    new-instance v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;-><init>(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->setOnInitializeAsyncFinished(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private isCustomTabIntent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_0

    .line 404
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCustomTabsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHerbIntent()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->canBeHijackedByHerb(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Disabled"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    const-string/jumbo v3, "Anise"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Basil"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Dill"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    .line 347
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    move v3, v1

    .line 349
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Herb Intent proprties -- SAME TASK: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", SAME DOCUMENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 346
    goto :goto_1

    :cond_4
    move v3, v2

    .line 347
    goto :goto_2

    .line 352
    :cond_5
    const-string/jumbo v1, "Chive"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private launchCustomTabActivity()V
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->handleInActiveContentIfNeeded(Landroid/content/Intent;)Z

    move-result v0

    .line 431
    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->isCustomTabIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsHerbIntent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v1, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->createCustomTabActivityIntent(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static launchDocumentInstance(Landroid/app/Activity;ZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)I
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 609
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 611
    :cond_0
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getDocumentLaunchMode()I

    move-result v3

    .line 612
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getDocumentStartedBy()I

    move-result v4

    .line 613
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v5

    .line 616
    invoke-virtual {v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setUrl(Ljava/lang/String;)V

    .line 623
    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    .line 624
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 625
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->getPostData()[B

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 626
    :cond_3
    invoke-virtual {v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->relaunchTask(ZLjava/lang/String;)I

    move-result v0

    .line 627
    if-eq v0, v1, :cond_5

    move v1, v0

    .line 661
    :cond_4
    :goto_0
    return v1

    .line 631
    :cond_5
    if-eqz p0, :cond_8

    if-eq v3, v2, :cond_6

    const/16 v0, 0xc8

    if-eq v4, v0, :cond_6

    const/16 v0, 0x1f4

    if-ne v4, v0, :cond_8

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 638
    :goto_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 639
    const/4 v7, 0x0

    invoke-virtual {v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, p1, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->createLaunchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v7

    .line 641
    const/high16 v0, 0x80000

    invoke-static {v7, v0, p1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->setRecentsFlagsOnIntent(Landroid/content/Intent;IZ)V

    .line 642
    const-string/jumbo v0, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    const-string/jumbo v0, "com.google.chrome.transition_type"

    invoke-virtual {v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result v5

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string/jumbo v0, "com.android.chrome.started_by"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 647
    const-string/jumbo v0, "com.android.chrome.parent_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 650
    :cond_7
    const-string/jumbo v0, "com.google.android.apps.chrome.EXTRA_LAUNCH_MODE"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    invoke-static {v7, v6}, Lorg/chromium/chrome/browser/IntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;Landroid/content/Context;)V

    .line 654
    if-ne v3, v2, :cond_9

    move v0, v2

    .line 655
    :goto_2
    if-nez p0, :cond_a

    .line 656
    const/high16 v2, 0x10000000

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 657
    invoke-static {v6, v7, p1, v0, p2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->fireDocumentIntent(Landroid/content/Context;Landroid/content/Intent;ZZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)Z

    move-result v0

    .line 661
    :goto_3
    if-eqz v0, :cond_4

    invoke-static {v7}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 631
    goto :goto_1

    .line 654
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 659
    :cond_a
    invoke-static {p0, v7, p1, v0, p2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->fireDocumentIntent(Landroid/content/Context;Landroid/content/Intent;ZZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)Z

    move-result v0

    goto :goto_3
.end method

.method private launchFirstRunExperience()Z
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 941
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 943
    :goto_0
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->checkIfFirstRunIsNecessary(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 945
    if-nez v0, :cond_1

    .line 955
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 941
    goto :goto_0

    .line 947
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 948
    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    move v2, v1

    .line 955
    goto :goto_1

    .line 950
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 951
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 953
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    goto :goto_2
.end method

.method private launchLastViewedActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 574
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getCurrentTabId()I

    move-result v0

    .line 575
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v2

    .line 577
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->relaunchTask(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 590
    :goto_0
    return v0

    .line 582
    :cond_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 583
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 584
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 585
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskClassName(Landroid/app/ActivityManager$AppTask;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 586
    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isDocumentActivity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->moveToFront(Landroid/app/ActivityManager$AppTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 588
    goto :goto_0

    .line 590
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTabbedMode()V
    .locals 3

    .prologue
    .line 780
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->maybePrefetchDnsInBackground()V

    .line 782
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 783
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 786
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 787
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 789
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_1

    const-string/jumbo v2, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 793
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z

    if-eqz v1, :cond_2

    .line 794
    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->makeMultiInstanceIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 796
    :cond_2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method private maybePerformMigrationTasks()V
    .locals 2

    .prologue
    .line 277
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptOutCleanUpPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptedOutOfDocumentMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->cleanUpChromeRecents(Z)V

    .line 280
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->setOptOutCleanUpPending(Z)V

    .line 282
    :cond_0
    return-void
.end method

.method private maybePrefetchDnsInBackground()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/chromium/chrome/browser/WarmupManager;->maybePrefetchDnsForUrlInBackground(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method private static moveToFront(Landroid/app/ActivityManager$AppTask;)Z
    .locals 1

    .prologue
    .line 926
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$AppTask;->moveToFront()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    const/4 v0, 0x1

    .line 931
    :goto_0
    return v0

    .line 929
    :catch_0
    move-exception v0

    sget-object v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->sMoveToFrontExceptionHistogram:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;->recordHit()V

    .line 931
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordIntentMetrics()V
    .locals 3

    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/IntentHandler;->determineExternalIntentSource(Ljava/lang/String;Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    move-result-object v1

    .line 965
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->CHROME:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-eq v1, v2, :cond_0

    .line 967
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10080000

    and-int/2addr v0, v1

    .line 968
    sget-object v1, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->sIntentFlagsHistogram:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;->record(I)V

    .line 970
    :cond_0
    return-void
.end method

.method private static relaunchTask(ZLjava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 858
    :goto_0
    return v0

    .line 837
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 838
    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 840
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 841
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    .line 842
    if-eqz v2, :cond_1

    .line 844
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v4}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getInitialUrlForDocument(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 845
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 847
    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 848
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->setPrioritizedTabId(I)V

    .line 849
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isRetargetable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 854
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->moveToFront(Landroid/app/ActivityManager$AppTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 855
    goto :goto_0

    :cond_2
    move v0, v1

    .line 858
    goto :goto_0
.end method

.method private static relaunchTask(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 806
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move v0, v1

    .line 824
    :goto_0
    return v0

    .line 808
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 811
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 812
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    .line 813
    if-eqz v3, :cond_1

    .line 815
    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v3}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 816
    if-ne v3, p0, :cond_1

    .line 818
    invoke-static {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->setPrioritizedTabId(I)V

    .line 819
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->moveToFront(Landroid/app/ActivityManager$AppTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 824
    goto :goto_0
.end method

.method private static setRecentsFlagsOnIntent(Landroid/content/Intent;IZ)V
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x800001

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 895
    if-nez p2, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 897
    :cond_1
    return-void
.end method


# virtual methods
.method public isChromeBrowserActivityRunning()Z
    .locals 3

    .prologue
    .line 903
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 904
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 905
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isDocumentActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    :cond_1
    const/4 v0, 0x1

    .line 913
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 252
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 254
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsCustomTabIntent:Z

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchCustomTabActivity()V

    .line 256
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->handleDocumentActivityIntent()V

    .line 259
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsFinishDelayed:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchTabbedMode()V

    .line 262
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    goto :goto_0

    .line 268
    :cond_3
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const-string/jumbo v0, "ChromeLauncherActivity"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->addTimestampToIntent(Landroid/content/Intent;)V

    .line 165
    const-string/jumbo v0, "chrome-command-line"

    invoke-static {p0, v0}, Lorg/chromium/base/CommandLineInitUtil;->initCommandLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->initializeAsync(Landroid/content/Context;J)V

    .line 172
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->maybePerformMigrationTasks()V

    .line 173
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->recordIntentMetrics()V

    .line 175
    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->shouldRunInMultiInstanceMode(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z

    .line 176
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/IntentHandler;-><init>(Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    .line 177
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->isCustomTabIntent()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsCustomTabIntent:Z

    .line 178
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsCustomTabIntent:Z

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->isHerbIntent()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsHerbIntent:Z

    .line 180
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsHerbIntent:Z

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsCustomTabIntent:Z

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 191
    const-string/jumbo v2, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 193
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 194
    if-nez v3, :cond_2

    if-ne v1, v4, :cond_2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/IntentHandler;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappLauncherActivity;->bringWebappToFront(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto :goto_0

    .line 207
    :cond_3
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->launchNotificationPreferences(Landroid/content/Context;Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    goto :goto_0

    .line 214
    :cond_4
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsCustomTabIntent:Z

    if-nez v1, :cond_5

    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 215
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchTabbedMode()V

    .line 216
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    goto :goto_0

    .line 221
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.apps.chrome.document.CLOSE_ALL_INCOGNITO"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->closeAllTabs()V

    .line 223
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto :goto_0

    .line 229
    :cond_6
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchFirstRunExperience()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsCustomTabIntent:Z

    if-eqz v0, :cond_7

    .line 232
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchCustomTabActivity()V

    .line 233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    goto :goto_0

    .line 238
    :cond_7
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->handleDocumentActivityIntent()V

    .line 239
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsFinishDelayed:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 245
    const-string/jumbo v0, "ChromeLauncherActivity"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public processUrlViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;Ljava/lang/String;IZLandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_0
    return-void
.end method

.method public processWebSearchIntent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method
