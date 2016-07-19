.class public Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;
.super Ljava/lang/Object;
.source "UpdateMenuItemHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sGetInstanceLock:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;


# instance fields
.field private mAlreadyCheckedForUpdates:Z

.field private mMenuItemClicked:Z

.field private mUpdateAvailable:Z

.field private mUpdateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->$assertionsDisabled:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->sGetInstanceLock:Ljava/lang/Object;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z

    return v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordInternalStorageSize()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordUpdateHistogram()V

    return-void
.end method

.method public static createHideUpdateBadgeAnimation(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 299
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 303
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 307
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 308
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 309
    new-instance v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;

    invoke-direct {v0, p1, p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    return-object v2
.end method

.method public static createShowUpdateBadgeAnimation(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v6, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 252
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->menu_badge_translation_y_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 256
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v7, [F

    int-to-float v1, v1

    aput v1, v3, v5

    aput v4, v3, v6

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 258
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 266
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 267
    const-wide/16 v0, 0x15e

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 268
    new-instance v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    return-object v3
.end method

.method private static getBooleanParam(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "UpdateMenuItem"

    invoke-static {v1, p0}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->sGetInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->sInstance:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->sInstance:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    .line 87
    const-string/jumbo v0, "market-url-for-testing"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    sget-object v2, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->sInstance:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    iput-object v0, v2, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateUrl:Ljava/lang/String;

    .line 92
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->sInstance:Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getSize(Landroid/os/StatFs;)I
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    .line 401
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    .line 402
    mul-int/2addr v0, v1

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    .line 403
    return v0
.end method

.method private static getSizeUpdatedApi(Landroid/os/StatFs;)I
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    return v0
.end method

.method private static getStringParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string/jumbo v0, "UpdateMenuItem"

    invoke-static {v0, p0}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    return-object v0
.end method

.method private recordInternalStorageSize()V
    .locals 5

    .prologue
    .line 379
    sget-boolean v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 381
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 382
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1

    .line 385
    invoke-static {v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getSize(Landroid/os/StatFs;)I

    move-result v0

    .line 389
    :goto_0
    const-string/jumbo v1, "GoogleUpdate.InfoBar.InternalStorageSizeAvailable"

    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/16 v4, 0x64

    invoke-static {v1, v0, v2, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordLinearCountHistogram(Ljava/lang/String;IIII)V

    .line 391
    return-void

    .line 387
    :cond_1
    invoke-static {v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getSizeUpdatedApi(Landroid/os/StatFs;)I

    move-result v0

    goto :goto_0
.end method

.method private recordItemClickedHistogram(I)V
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, "GoogleUpdate.MenuItem.ActionTakenOnMenuOpen"

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 338
    return-void
.end method

.method private recordUpdateHistogram()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getClickedUpdateMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v2, "GoogleUpdate.MenuItem.ActionTakenAfterItemClicked"

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 345
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setClickedUpdateMenuItem(Z)V

    .line 347
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method private updateAvailable(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mAlreadyCheckedForUpdates:Z

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->checkForUpdateOnBackgroundThread(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 329
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z

    goto :goto_0
.end method


# virtual methods
.method public checkForUpdateOnBackgroundThread(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "enable_update_menu_item"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "force-show-update-menu-item"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "force-show-update-menu-badge"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 109
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mAlreadyCheckedForUpdates:Z

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateAvailable:Z

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->onCheckForUpdate(Z)V

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mAlreadyCheckedForUpdates:Z

    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;-><init>(Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;Lorg/chromium/chrome/browser/ChromeActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getMenuItemSummaryText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "show_summary"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "use_new_features_summary"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "custom_summary"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string/jumbo v0, ""

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :cond_1
    const-string/jumbo v0, "custom_summary"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string/jumbo v0, "use_new_features_summary"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->menu_update_summary_new_features:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->menu_update_summary_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onMenuDismissed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mMenuItemClicked:Z

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordItemClickedHistogram(I)V

    .line 237
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mMenuItemClicked:Z

    .line 238
    return-void
.end method

.method public onMenuItemClicked(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordItemClickedHistogram(I)V

    .line 215
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setClickedUpdateMenuItem(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    const-string/jumbo v0, "UpdateMenuItemHelper"

    const-string/jumbo v1, "Failed to launch Activity for: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mUpdateUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordItemClickedHistogram(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mAlreadyCheckedForUpdates:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->recordUpdateHistogram()V

    .line 147
    :cond_0
    return-void
.end method

.method public setMenuItemClicked()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->mMenuItemClicked:Z

    .line 227
    return-void
.end method

.method public shouldShowMenuItem(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "force-show-update-menu-item"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    const-string/jumbo v0, "enable_update_menu_item"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->updateAvailable(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldShowToolbarBadge(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 1

    .prologue
    .line 192
    const-string/jumbo v0, "force-show-update-menu-badge"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 196
    :cond_0
    const-string/jumbo v0, "enable_update_badge"

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->updateAvailable(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v0

    goto :goto_0
.end method
