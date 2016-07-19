.class public Lorg/chromium/chrome/browser/download/DownloadManagerService;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManagerService.java"

# interfaces
.implements Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIME_TYPES_TO_OPEN:Ljava/util/List;

.field protected static final PENDING_OMA_DOWNLOADS:Ljava/lang/String; = "PendingOMADownloads"

.field private static sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

.field private final mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsUIUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNativeDownloadManagerService:J

.field private mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

.field private final mPendingDownloads:Landroid/util/LongSparseArray;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mUpdateDelayInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    const-class v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "application/vnd.oma.dd+xml"

    aput-object v4, v3, v2

    const-string/jumbo v2, "application/pdf"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "application/x-x509-ca-cert"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "application/x-x509-user-cert"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "application/x-x509-server-cert"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "application/x-pkcs12"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "application/application/x-pem-file"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "application/pkix-cert"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "application/x-wifi-config"

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->MIME_TYPES_TO_OPEN:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/download/DownloadNotifier;Landroid/os/Handler;J)V
    .locals 4

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;

    .line 210
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 213
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    .line 214
    iput-wide p4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mUpdateDelayInMillis:J

    .line 215
    iput-object p3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mIsUIUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    new-instance v0, Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    .line 218
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "DownloadNotificationIds"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "DownloadNotificationIds"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->init()V

    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->clearPendingDownloads()V

    .line 226
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->clearPendingOMADownloads()V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;J)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->canResolveDownloadItem(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/download/DownloadManagerService;J)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->removeOMADownloadFromSharedPrefs(J)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/DownloadSnackbarController;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->updateAllNotifications()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;J)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->handleAutoOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;J)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mIsUIUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getLaunchIntentFromDownloadId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static canResolveDownloadItem(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    .line 931
    sget-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 932
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getLaunchIntentFromDownloadId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 933
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private clearPendingOMADownload(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;JLjava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method

.method public static getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;
    .locals 6

    .prologue
    .line 178
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 179
    sget-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;

    new-instance v2, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/download/DownloadNotifier;Landroid/os/Handler;J)V

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 184
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    return-object v0
.end method

.method private static getLaunchIntentFromDownloadId(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 907
    sget-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 908
    :cond_0
    const-string/jumbo v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 910
    invoke-virtual {v0, p1, p2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v2

    .line 911
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 920
    :goto_0
    return-object v0

    .line 912
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1, p2}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const v0, 0x10000001

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 916
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "android-app"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 919
    const-string/jumbo v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v0, v1

    .line 920
    goto :goto_0
.end method

.method protected static getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private handleAutoOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;J)V
    .locals 2

    .prologue
    .line 531
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->isOMADownloadDescription(Lorg/chromium/content/browser/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->handleOMADownload(Lorg/chromium/content/browser/DownloadInfo;J)V

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openDownloadedContent(J)V

    goto :goto_0
.end method

.method public static hasDownloadManagerService()Z
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 189
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAttachment(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    if-eqz p0, :cond_0

    const-string/jumbo v3, "attachment"

    const/16 v5, 0xa

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isDownloadIdInOMASharedPrefs(J)Z
    .locals 5

    .prologue
    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingOMADownloads"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->parseOMAEntry(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;

    move-result-object v0

    .line 412
    iget-wide v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mDownloadId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOMADownloadDescription(Lorg/chromium/content/browser/DownloadInfo;)Z
    .locals 2

    .prologue
    .line 867
    const-string/jumbo v0, "application/vnd.oma.dd+xml"

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native nativeCancelDownload(JI)V
.end method

.method private native nativeInit()J
.end method

.method private native nativePauseDownload(JI)V
.end method

.method private native nativeResumeDownload(JILjava/lang/String;)V
.end method

.method protected static openDownloadsPage(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1016
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1017
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1019
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    const-string/jumbo v1, "DownloadService"

    const-string/jumbo v2, "Cannot find Downloads app"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static openIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 2

    .prologue
    .line 883
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    .line 885
    if-eqz v0, :cond_0

    .line 887
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 888
    const/4 v0, 0x1

    .line 896
    :goto_0
    return v0

    .line 890
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "activity not found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 893
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cannot open intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private recordAutoPausedDownloads()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->parseDownloadNotificationsFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 1072
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1073
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->recordDownloadResumption(I)V

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method private recordDownloadResumption(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1082
    sget-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1083
    :cond_1
    const-string/jumbo v0, "MobileDownload.DownloadResumption"

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 1085
    return-void
.end method

.method private removeOMADownloadFromSharedPrefs(J)V
    .locals 7

    .prologue
    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingOMADownloads"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 393
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->parseOMAEntry(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;

    move-result-object v3

    .line 395
    iget-wide v4, v3, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mDownloadId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 396
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PendingOMADownloads"

    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 401
    :cond_1
    return-void
.end method

.method private scheduleUpdateIfNeeded()V
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mIsUIUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V

    .line 579
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mUpdateDelayInMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    :cond_0
    return-void
.end method

.method public static setDownloadManagerService(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/DownloadManagerService;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 200
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 201
    sput-object p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->sDownloadManagerService:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 202
    return-object v0
.end method

.method static shouldOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;)Z
    .locals 2

    .prologue
    .line 844
    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->hasUserGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->isAttachment(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->MIME_TYPES_TO_OPEN:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .prologue
    .line 429
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    return-void

    .line 433
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateAllNotifications()Ljava/util/Map;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 447
    sget-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 448
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 450
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;

    .line 451
    if-eqz v0, :cond_1

    .line 452
    iget-object v4, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 453
    sget-object v5, Lorg/chromium/chrome/browser/download/DownloadManagerService$3;->$SwitchMap$org$chromium$chrome$browser$download$DownloadManagerService$DownloadStatus:[I

    iget-object v6, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadStatus:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 455
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->addCompletedDownload(Lorg/chromium/content/browser/DownloadInfo;)J

    move-result-wide v6

    .line 457
    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    .line 458
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->notifyDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-static {v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->isOMADownloadDescription(Lorg/chromium/content/browser/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->canResolveDownloadItem(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 463
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    iget-object v5, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getLaunchIntentFromDownloadId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->notifyDownloadSuccessful(Lorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;)V

    .line 466
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->broadcastDownloadSuccessful(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 461
    goto :goto_1

    .line 470
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->notifyDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 472
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v0, "DownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Download failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 476
    :pswitch_2
    iget-boolean v5, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mUpdateNotification:Z

    if-eqz v5, :cond_1

    .line 477
    iget-object v5, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    iget-wide v6, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mStartTimeInMillis:J

    invoke-interface {v5, v4, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->notifyDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;J)V

    .line 478
    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->recordDownloadResumption(I)V

    goto/16 :goto_0

    .line 483
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v4

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->cancelNotification(I)V

    goto/16 :goto_0

    .line 489
    :cond_5
    return-object v2

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 590
    sget-boolean v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->hasDownloadId()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 591
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v7

    .line 592
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;

    .line 593
    if-nez v0, :cond_1

    .line 594
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;-><init>(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;Z)V

    .line 595
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mUpdateNotification:Z

    goto :goto_0

    .line 601
    :cond_2
    iput-object p2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadStatus:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    .line 602
    iput-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 603
    iput-boolean v6, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mUpdateNotification:Z

    goto :goto_0
.end method


# virtual methods
.method protected addCompletedDownload(Lorg/chromium/content/browser/DownloadInfo;)J
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 500
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "application/unknown"

    .line 502
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 504
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 508
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 521
    :goto_0
    return-wide v0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string/jumbo v1, "DownloadService"

    const-string/jumbo v2, "Failed to add the download item to DownloadManager: "

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 514
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    const-string/jumbo v0, "DownloadService"

    const-string/jumbo v1, "Failed to remove the unsuccessful download"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected addOMADownloadToSharedPrefs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingOMADownloads"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 383
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PendingOMADownloads"

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 385
    return-void
.end method

.method protected broadcastDownloadSuccessful(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method cancelDownload(I)V
    .locals 2

    .prologue
    .line 1048
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mNativeDownloadManagerService:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->nativeCancelDownload(JI)V

    .line 1049
    return-void
.end method

.method cancelNotification(I)V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->cancelNotification(I)V

    .line 1031
    return-void
.end method

.method public clearPendingOMADownloads()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingOMADownloads"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingOMADownloads"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->parseOMAEntry(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;

    move-result-object v0

    .line 266
    iget-wide v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mDownloadId:J

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mInstallNotifyURI:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->clearPendingOMADownload(JLjava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method public enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;Z)V
    .locals 4

    .prologue
    .line 707
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;)V

    .line 708
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 709
    return-void
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mNativeDownloadManagerService:J

    .line 232
    invoke-static {p0}, Lorg/chromium/content/browser/DownloadController;->setDownloadNotificationService(Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;)V

    .line 233
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->recordAutoPausedDownloads()V

    .line 234
    return-void
.end method

.method public onDownloadCancelled(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;->CANCELLED:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->updateDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;)V

    .line 255
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    .line 256
    return-void
.end method

.method public onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 6

    .prologue
    .line 238
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;->COMPLETE:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    .line 239
    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 240
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;->FAILED:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    .line 242
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->updateDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;)V

    .line 243
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    .line 244
    return-void
.end method

.method protected onDownloadFailed(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_unknown_error:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 967
    packed-switch p2, :pswitch_data_0

    .line 998
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    const/16 v4, 0x3f1

    if-ne p2, v4, :cond_0

    :goto_1
    invoke-virtual {v3, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->onDownloadFailed(Ljava/lang/String;Z)V

    .line 1000
    return-void

    .line 969
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_file_already_exists:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 973
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_file_system_error:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 977
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_insufficient_space:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 982
    :pswitch_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_network_failures:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 987
    :pswitch_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_server_issues:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 991
    :pswitch_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->download_failed_reason_storage_not_found:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 998
    goto :goto_1

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onDownloadUpdated(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;->IN_PROGRESS:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->updateDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;)V

    .line 249
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    .line 250
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 620
    const-string/jumbo v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    const-string/jumbo v0, "extra_download_id"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 623
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->isPendingOMADownload(J)Z

    move-result v0

    .line 625
    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->isDownloadIdInOMASharedPrefs(J)Z

    move-result v1

    .line 626
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 627
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->clearPendingOMADownload(JLjava/lang/String;)V

    .line 628
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/DownloadInfo;

    .line 632
    if-eqz v0, :cond_0

    .line 633
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;J)V

    .line 634
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 635
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 636
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method onResumptionFailed(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadNotifier:Lorg/chromium/chrome/browser/download/DownloadNotifier;

    new-instance v1, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadNotifier;->notifyDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 1063
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->recordDownloadResumption(I)V

    .line 1064
    return-void
.end method

.method protected openDownloadedContent(J)V
    .locals 3

    .prologue
    .line 943
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;J)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 956
    return-void
.end method

.method pauseDownload(I)V
    .locals 2

    .prologue
    .line 1056
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mNativeDownloadManagerService:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->nativePauseDownload(JI)V

    .line 1057
    return-void
.end method

.method resumeDownload(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1039
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->recordDownloadResumption(I)V

    .line 1040
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mNativeDownloadManagerService:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->nativeResumeDownload(JILjava/lang/String;)V

    .line 1041
    return-void
.end method

.method protected setDownloadSnackbarController(Lorg/chromium/chrome/browser/download/DownloadSnackbarController;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    .line 1009
    return-void
.end method

.method protected setOMADownloadHandler(Lorg/chromium/chrome/browser/download/OMADownloadHandler;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    .line 615
    return-void
.end method
