.class public Lorg/chromium/content/browser/DownloadController;
.super Ljava/lang/Object;
.source "DownloadController.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

.field private static final sInstance:Lorg/chromium/content/browser/DownloadController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/chromium/content/browser/DownloadController;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadController;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0}, Lorg/chromium/content/browser/DownloadController;->nativeInit()V

    .line 56
    return-void
.end method

.method private static downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/content/browser/DownloadController;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    return-object v0
.end method

.method private hasFileAccess(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native nativeInit()V
.end method

.method private native nativeOnRequestFileAccessResult(JZ)V
.end method

.method private newHttpGetDownload(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 4

    .prologue
    .line 77
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentDisposition(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setCookie(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p10, p11}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->requestHttpGetDownload(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 94
    :cond_0
    return-void
.end method

.method private onDangerousDownload(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 188
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->onDangerousDownload(Ljava/lang/String;I)V

    .line 192
    :cond_0
    return-void
.end method

.method private onDownloadCancelled(I)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasDownloadId(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 148
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v1, v0}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadCancelled(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 150
    :cond_0
    return-void
.end method

.method private onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIZ)V
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsSuccessful(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasDownloadId(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 133
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v1, v0}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 135
    :cond_0
    return-void
.end method

.method private onDownloadStarted(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->onDownloadStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method private onDownloadUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIIJZZZ)V
    .locals 3

    .prologue
    .line 161
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsSuccessful(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasDownloadId(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setPercentCompleted(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p10, p11}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setTimeRemainingInMillis(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p12}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    move/from16 v0, p13

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsPaused(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v1

    .line 178
    sget-object v2, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v2, v1}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadUpdated(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 180
    :cond_0
    return-void
.end method

.method private requestFileAccess(Lorg/chromium/content/browser/ContentViewCore;J)V
    .locals 6

    .prologue
    .line 213
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->requestFileAccess(J)V

    .line 228
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/DownloadController$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/chromium/content/browser/DownloadController$1;-><init>(Lorg/chromium/content/browser/DownloadController;J)V

    .line 224
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_0
.end method

.method public static setDownloadNotificationService(Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;)V
    .locals 0

    .prologue
    .line 63
    sput-object p0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    .line 64
    return-void
.end method


# virtual methods
.method public onRequestFileAccessResult(JZ)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/DownloadController;->nativeOnRequestFileAccessResult(JZ)V

    .line 237
    return-void
.end method
