.class public abstract Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;
.super Landroid/support/v7/app/C;
.source "AsyncInitializationActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/init/BrowserParts;
.implements Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sBadIntentMetric:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;


# instance fields
.field private mCurrentOrientation:I

.field private mDestroyed:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mIsTablet:Z

.field private mLastUserInteractionTime:J

.field private final mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

.field private mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

.field private mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

.field private mOnCreateTimestampMs:J

.field private mOnCreateTimestampUptimeMs:J

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;

    const-string/jumbo v1, "Launch.InvalidIntent"

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->sBadIntentMetric:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mCurrentOrientation:I

    .line 426
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;)V

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mHandler:Landroid/os/Handler;

    .line 64
    return-void

    :cond_0
    move-object v0, v1

    .line 426
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->checkOrientation()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)Lorg/chromium/chrome/browser/init/NativeInitializationController;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    return-object v0
.end method

.method private checkOrientation()V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 368
    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    .line 373
    iget v1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mCurrentOrientation:I

    .line 374
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mCurrentOrientation:I

    .line 376
    iget v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mCurrentOrientation:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mCurrentOrientation:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onOrientationChange(I)V

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->attachBaseContext(Landroid/content/Context;)V

    .line 80
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string/jumbo v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 83
    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 84
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 85
    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 86
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 89
    :cond_0
    return-void
.end method

.method public finishNativeInitialization()V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->checkOrientation()V

    .line 158
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$2;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 166
    new-instance v0, Lorg/chromium/chrome/browser/metrics/MemoryUma;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/metrics/MemoryUma;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onNativeInitializationComplete()V

    .line 168
    return-void
.end method

.method public getLastUserInteractionTime()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLastUserInteractionTime:J

    return-wide v0
.end method

.method protected getOnCreateTimestampMs()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mOnCreateTimestampMs:J

    return-wide v0
.end method

.method protected getOnCreateTimestampUptimeMs()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mOnCreateTimestampUptimeMs:J

    return-wide v0
.end method

.method protected getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getViewToBeDrawnBeforeInitializingNative()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initializeCompositor()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public initializeState()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public isActivityDestroyed()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mDestroyed:Z

    return v0
.end method

.method protected isStartedUpCorrectly(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mIsTablet:Z

    return v0
.end method

.method public maybePreconnect()V
    .locals 3

    .prologue
    .line 138
    const-string/jumbo v0, "maybePreconnect"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/WarmupManager;->maybePreconnectUrlAndSubResources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 145
    :cond_0
    const-string/jumbo v0, "maybePreconnect"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    return-void
.end method

.method public onActivityResultWithNative(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->isStartedUpCorrectly(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->sBadIntentMetric:Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;->recordHit()V

    .line 194
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mOnCreateTimestampMs:J

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mOnCreateTimestampUptimeMs:J

    .line 202
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 204
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePreNativeStartup(Lorg/chromium/chrome/browser/init/BrowserParts;)V

    goto :goto_0
.end method

.method public final onCreateWithNative()V
    .locals 2

    .prologue
    .line 284
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePostNativeStartup(ZLorg/chromium/chrome/browser/init/BrowserParts;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->reportStartupErrorAndExit(Lorg/chromium/base/library_loader/ProcessInitException;)V

    goto :goto_0
.end method

.method protected onDeferredStartup()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mDestroyed:Z

    .line 69
    invoke-super {p0}, Landroid/support/v7/app/C;->onDestroy()V

    .line 70
    return-void
.end method

.method public final onFirstDrawComplete()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$3;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Landroid/support/v7/app/C;->onLowMemory()V

    .line 328
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->onLowMemory()V

    .line 329
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onNewIntent(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onNewIntentWithNative(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method protected onOrientationChange(I)V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onPause()V

    .line 258
    invoke-super {p0}, Landroid/support/v7/app/C;->onPause()V

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    # invokes: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->onPause()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->access$100(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onPauseWithNative()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/support/v7/app/C;->onResume()V

    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onResume()V

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->onResume()V

    .line 253
    :cond_0
    return-void
.end method

.method public onResumeWithNative()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/support/v7/app/C;->onStart()V

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onStart()V

    .line 246
    return-void
.end method

.method public onStartWithNative()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onStartupFailure()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    .line 181
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->reportStartupErrorAndExit(Lorg/chromium/base/library_loader/ProcessInitException;)V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/support/v7/app/C;->onStop()V

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->onStop()V

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onStop()V

    .line 267
    return-void
.end method

.method public onStopWithNative()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onTrimMemory(I)V

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mMemoryUma:Lorg/chromium/chrome/browser/metrics/MemoryUma;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->onTrimMemory(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLastUserInteractionTime:J

    .line 347
    return-void
.end method

.method public postInflationStartup()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getViewToBeDrawnBeforeInitializingNative()Landroid/view/View;

    move-result-object v0

    .line 115
    sget-boolean v1, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;Landroid/view/View;)V

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 126
    return-void
.end method

.method public preInflationStartup()V
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mIsTablet:Z

    .line 94
    return-void
.end method

.method protected removeWindowBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 383
    .line 385
    :try_start_0
    const-class v0, Landroid/provider/Settings$Secure;

    const-string/jumbo v2, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_1

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_1

    .line 396
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 408
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 407
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected resetSavedInstanceState()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 240
    return-void
.end method

.method protected abstract setContentView()V
.end method

.method public final setContentViewAndLoadLibrary()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->setContentView()V

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mLaunchBehindWorkaround:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->onSetContentView()V

    .line 108
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->startBackgroundTasks()V

    .line 110
    return-void
.end method
