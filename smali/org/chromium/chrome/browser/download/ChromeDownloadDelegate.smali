.class public Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;
.super Ljava/lang/Object;
.source "ChromeDownloadDelegate.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewDownloadDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDangerousDownloadListener:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

.field private mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    .line 141
    iput-object p3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 149
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 150
    iput-object v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

    .line 151
    new-instance v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mDangerousDownloadListener:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->discardFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->checkExternalStorageAndNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->confirmDangerousDownload(Lorg/chromium/content/browser/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->deleteFileForOverwrite(Lorg/chromium/content/browser/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeDangerousDownloadValidated(Ljava/lang/Object;IZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->showDownloadStartNotification()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->closeBlankTab()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/util/Pair;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->getDownloadDirectoryNameAndFullPath()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->doesFileAlreadyExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->launchDownloadInfoBar(Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private alertDownloadFailure(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->onDownloadFailed(Ljava/lang/String;I)V

    .line 465
    return-void
.end method

.method private checkExternalStorageAndNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v0, 0x3ef

    const/4 v1, 0x0

    .line 435
    if-nez p2, :cond_0

    .line 436
    const-string/jumbo v2, "Download"

    const-string/jumbo v3, "Download failed: no SD card"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->alertDownloadFailure(Ljava/lang/String;I)V

    move v0, v1

    .line 453
    :goto_0
    return v0

    .line 441
    :cond_0
    const-string/jumbo v2, "mounted"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    const-string/jumbo v2, "shared"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    const-string/jumbo v0, "Download"

    const-string/jumbo v2, "Download failed: SD card unavailable"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    const/16 v0, 0x3e9

    .line 450
    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->alertDownloadFailure(Ljava/lang/String;I)V

    move v0, v1

    .line 451
    goto :goto_0

    .line 448
    :cond_1
    const-string/jumbo v2, "Download"

    const-string/jumbo v3, "Download failed: no SD card"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 453
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeBlankTab()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 572
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v2, :cond_0

    .line 583
    :goto_0
    return v0

    .line 576
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    .line 577
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/NavigationController;->isInitialNavigation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 577
    goto :goto_1

    :cond_3
    move v0, v1

    .line 583
    goto :goto_0
.end method

.method private confirmDangerousDownload(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 8

    .prologue
    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 260
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

    .line 262
    sget v3, Lorg/chromium/chrome/R$drawable;->infobar_warning:I

    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeGetDownloadWarningText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mDangerousDownloadListener:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

    const/16 v2, 0x3d

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;->create(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static deleteFileForOverwrite(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 3

    .prologue
    .line 368
    sget-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 369
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    const-string/jumbo v0, "Download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to delete a file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static discardFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 554
    new-instance v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$7;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$7;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    return-void
.end method

.method private static doesFileAlreadyExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 362
    sget-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 363
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;Z)V

    .line 423
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->closeBlankTab()Z

    .line 424
    return-void
.end method

.method private enqueueDownloadManagerRequestFromNative(ZLorg/chromium/content/browser/DownloadInfo;)Z
    .locals 2

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 391
    new-instance v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;

    invoke-direct {v0, p0, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 406
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->closeBlankTab()Z

    move-result v0

    return v0

    .line 404
    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0
.end method

.method private static getDownloadDirectoryNameAndFullPath()Landroid/util/Pair;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 354
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-object v0

    .line 356
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 358
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static isDangerousExtension(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 545
    const-string/jumbo v0, "apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchDownloadInfoBar(Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 410
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeLaunchDownloadOverwriteInfoBar(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeDangerousDownloadValidated(Ljava/lang/Object;IZ)V
.end method

.method private static native nativeGetDownloadWarningText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeIsDownloadDangerous(Ljava/lang/String;)Z
.end method

.method private static native nativeLaunchDownloadOverwriteInfoBar(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeLaunchPermissionUpdateInfoBar(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;J)V
.end method

.method private static remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "text/plain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/octet-stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "octet/stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/force-download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    :goto_0
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 523
    :cond_1
    :goto_1
    return-object p0

    .line 517
    :cond_2
    const-string/jumbo v0, "dm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    const-string/jumbo p0, "application/vnd.oma.drm.message"

    goto :goto_1

    .line 519
    :cond_3
    const-string/jumbo v0, "dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const-string/jumbo p0, "application/vnd.oma.dd+xml"

    goto :goto_1

    :cond_4
    move-object p2, p1

    goto :goto_0
.end method

.method private showDownloadStartNotification()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->download_pending:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 486
    return-void
.end method


# virtual methods
.method protected isDangerousFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 534
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeIsDownloadDangerous(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->isDangerousExtension(Ljava/lang/String;)Z

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

.method public onDangerousDownload(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasDownloadId(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 284
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->confirmDangerousDownload(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 285
    return-void
.end method

.method protected onDownloadStartNoStream(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-boolean v1, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;

    invoke-direct {v2, p0, v0, p1, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Ljava/lang/String;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->isDangerousFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->showDownloadStartNotification()V

    .line 477
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->closeBlankTab()Z

    .line 479
    :cond_0
    return-void
.end method

.method public requestFileAccess(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lorg/chromium/content/browser/DownloadController;->getInstance()Lorg/chromium/content/browser/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lorg/chromium/content/browser/DownloadController;->onRequestFileAccessResult(JZ)V

    .line 343
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 297
    if-eqz v0, :cond_2

    .line 299
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->update_permissions_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 302
    sget v1, Lorg/chromium/chrome/R$id;->text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 303
    sget v3, Lorg/chromium/chrome/R$string;->missing_storage_permission_download_education_text:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 305
    new-instance v1, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$3;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;J)V

    .line 314
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    sget v4, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v3, v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->infobar_update_permissions_button_text:I

    new-instance v3, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;

    invoke-direct {v3, p0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$4;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;J)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p1, p2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeLaunchPermissionUpdateInfoBar(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;J)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-static {}, Lorg/chromium/content/browser/DownloadController;->getInstance()Lorg/chromium/content/browser/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lorg/chromium/content/browser/DownloadController;->onRequestFileAccessResult(JZ)V

    goto/16 :goto_0
.end method

.method public requestHttpGetDownload(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->isAttachment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->onDownloadStartNoStream(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0
.end method

.method protected sanitizeDownloadUrl(Lorg/chromium/content/browser/DownloadInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptContextMenuDownload(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 594
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 596
    const-string/jumbo v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 597
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 600
    if-eqz v2, :cond_0

    const-string/jumbo v3, ".dm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    new-instance v2, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v2

    .line 602
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 603
    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v3

    .line 604
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 605
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->onDownloadStartNoStream(Lorg/chromium/content/browser/DownloadInfo;)V

    :cond_3
    :goto_1
    move v0, v1

    .line 620
    goto :goto_0

    .line 606
    :cond_4
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 607
    new-instance v4, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;

    invoke-direct {v4, p0, v2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V

    .line 617
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v0

    invoke-virtual {v3, v2, v4}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_1
.end method
