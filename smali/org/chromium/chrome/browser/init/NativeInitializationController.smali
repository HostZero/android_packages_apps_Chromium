.class Lorg/chromium/chrome/browser/init/NativeInitializationController;
.super Ljava/lang/Object;
.source "NativeInitializationController.java"


# instance fields
.field private final mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDoneFirstDraw:Z

.field private mInitializationComplete:Z

.field private mOnResumePending:Z

.field private mOnStartPending:Z

.field private mPendingActivityResults:Ljava/util/List;

.field private mPendingNewIntents:Ljava/util/List;

.field private mWaitingForFirstDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p2, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/init/NativeInitializationController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/init/NativeInitializationController;)Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onLibraryLoaded()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onNativeLibraryLoaded()V

    return-void
.end method

.method private onLibraryLoaded()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mHasDoneFirstDraw:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onNativeLibraryLoaded()V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mWaitingForFirstDraw:Z

    goto :goto_0
.end method

.method private onNativeLibraryLoaded()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onCreateWithNative()V

    goto :goto_0
.end method

.method private startNowAndProcessPendingItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onStartWithNative()V

    .line 255
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingNewIntents:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingNewIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onNewIntentWithNative(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    :cond_0
    iput-object v5, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingNewIntents:Ljava/util/List;

    .line 262
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 264
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;

    .line 266
    iget-object v2, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    iget v3, v0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;->requestCode:I

    iget v4, v0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;->resultCode:I

    iget-object v0, v0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;->data:Landroid/content/Intent;

    invoke-interface {v2, v3, v4, v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onActivityResultWithNative(IILandroid/content/Intent;)Z

    .line 264
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 269
    :cond_2
    iput-object v5, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    .line 271
    :cond_3
    return-void
.end method


# virtual methods
.method public firstDrawComplete()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mHasDoneFirstDraw:Z

    .line 130
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mWaitingForFirstDraw:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mWaitingForFirstDraw:Z

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/init/NativeInitializationController$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController$2;-><init>(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onActivityResultWithNative(IILandroid/content/Intent;)Z

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingActivityResults:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;-><init>(IILandroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onNativeInitializationComplete()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    .line 155
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnStartPending:Z

    if-eqz v0, :cond_0

    .line 156
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnStartPending:Z

    .line 157
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->startNowAndProcessPendingItems()V

    .line 160
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnResumePending:Z

    if-eqz v0, :cond_1

    .line 161
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnResumePending:Z

    .line 162
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->onResume()V

    .line 166
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->onNativeInitializationComplete(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string/jumbo v1, "NativeInitializationController"

    const-string/jumbo v2, "Unable to load native library."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onStartupFailure()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onNewIntentWithNative(Landroid/content/Intent;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingNewIntents:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingNewIntents:Ljava/util/List;

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mPendingNewIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnResumePending:Z

    .line 202
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onPauseWithNative()V

    .line 203
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onResumeWithNative()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnResumePending:Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->startNowAndProcessPendingItems()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnStartPending:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mOnStartPending:Z

    .line 210
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mInitializationComplete:Z

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onStopWithNative()V

    goto :goto_0
.end method

.method public startBackgroundTasks()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;-><init>(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;->start()V

    .line 112
    return-void
.end method
