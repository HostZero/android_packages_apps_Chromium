.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
.super Ljava/lang/Object;
.source "OfflinePageBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BOOKMARK_NAMESPACE:Ljava/lang/String; = "bookmark"

.field public static final INVALID_OFFLINE_ID:J

.field private static sFeatureMode:Ljava/lang/Integer;


# instance fields
.field private mIsNativeOfflinePageModelLoaded:Z

.field private mNativeOfflinePageBridge:J

.field private final mObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mObservers:Lorg/chromium/base/ObserverList;

    .line 165
    iput-wide p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    .line 166
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;JJJZ)V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeRecordStorageHistograms(JJJZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->recordStorageHistograms(Z)V

    return-void
.end method

.method public static canSavePage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 208
    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeCanSavePage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static create(J)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;-><init>(J)V

    return-object v0
.end method

.method private static createClientId(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/ClientId;
    .locals 1

    .prologue
    .line 536
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/ClientId;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createOfflinePageAndAddToList(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)V
    .locals 1

    .prologue
    .line 522
    invoke-static/range {p1 .. p13}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->createOfflinePageItem(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method private static createOfflinePageItem(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
    .locals 14

    .prologue
    .line 530
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)V

    return-object v0
.end method

.method public static getFeatureMode()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 182
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->sFeatureMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetFeatureMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->sFeatureMode:Ljava/lang/Integer;

    .line 183
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->sFeatureMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 46
    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetOfflinePageBridgeForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    return-object v0
.end method

.method public static isBackgroundLoadingEnabled()Z
    .locals 1

    .prologue
    .line 201
    const-string/jumbo v0, "offline-pages-background-loading"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 192
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getFeatureMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markPageAccessed(J)V
    .locals 3

    .prologue
    .line 334
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 335
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeMarkPageAccessed(JJ)V

    .line 336
    return-void
.end method

.method private static native nativeCanSavePage(Ljava/lang/String;)Z
.end method

.method private native nativeCheckMetadataConsistency(J)V
.end method

.method private native nativeDeletePage(JLorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;J)V
.end method

.method private native nativeDeletePages(JLorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;[J)V
.end method

.method private native nativeGetAllPages(JLjava/util/List;)V
.end method

.method private static native nativeGetFeatureMode()I
.end method

.method private static native nativeGetOfflinePageBridgeForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
.end method

.method private native nativeGetOfflineUrlForOnlineUrl(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetPageByOfflineUrl(JLjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
.end method

.method private native nativeGetPageByOnlineURL(JLjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
.end method

.method private native nativeGetPagesToCleanUp(JLjava/util/List;)V
.end method

.method private native nativeMarkPageAccessed(JJ)V
.end method

.method private native nativeRecordStorageHistograms(JJJZ)V
.end method

.method private native nativeSavePage(JLorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private offlinePageBridgeDestroyed()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 504
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 505
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 507
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    .line 508
    iput-wide v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    .line 509
    return-void
.end method

.method private offlinePageModelChanged()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    .line 495
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;->offlinePageModelChanged()V

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method private static recordFreeSpaceHistograms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method private recordStorageHistograms(Z)V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method private wrapCallbackWithHistogramReporting(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)V

    return-object v0
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public checkOfflinePageMetadata()V
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeCheckMetadataConsistency(J)V

    .line 414
    return-void
.end method

.method public deletePage(Lorg/chromium/chrome/browser/offlinepages/ClientId;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)V
    .locals 7

    .prologue
    .line 346
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_0
    const-string/jumbo v0, "OfflinePages.DeletePage.FreeSpacePercentage"

    const-string/jumbo v1, "OfflinePages.DeletePage.FreeSpaceMB"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->recordFreeSpaceHistograms(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->wrapCallbackWithHistogramReporting(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;

    move-result-object v3

    .line 352
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getOfflineIdsForClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Ljava/util/Set;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 354
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;->onDeletePageDone(I)V

    .line 360
    :cond_1
    return-void

    .line 357
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 358
    iget-wide v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeDeletePage(JLorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;J)V

    goto :goto_0
.end method

.method protected deletePages(Ljava/util/List;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)V
    .locals 6

    .prologue
    .line 379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 380
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 381
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 384
    :cond_0
    const-string/jumbo v0, "OfflinePages.DeletePage.FreeSpacePercentage"

    const-string/jumbo v1, "OfflinePages.DeletePage.FreeSpaceMB"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->recordFreeSpaceHistograms(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->wrapCallbackWithHistogramReporting(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;

    move-result-object v0

    .line 388
    iget-wide v4, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v4, v5, v0, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeDeletePages(JLorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;[J)V

    .line 389
    return-void
.end method

.method public getAllPages()Ljava/util/List;
    .locals 4

    .prologue
    .line 231
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-wide v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetAllPages(JLjava/util/List;)V

    .line 234
    return-object v0
.end method

.method public getLaunchUrlAndMarkAccessed(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-object p2

    .line 439
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->isConnected()Z

    move-result v0

    .line 440
    const-string/jumbo v1, "OfflinePages.OnlineOnOpen"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 443
    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getOfflineId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->markPageAccessed(J)V

    .line 450
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getOfflineUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getLaunchUrlFromOnlineUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPageByOnlineURL(Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getLaunchUrlAndMarkAccessed(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getOfflineIdsForClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Ljava/util/Set;
    .locals 6

    .prologue
    .line 242
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetOfflineIdsForClientId(JLjava/lang/String;Ljava/lang/String;)[J

    move-result-object v1

    .line 245
    new-instance v2, Ljava/util/HashSet;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-wide v4, v1, v0

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return-object v2
.end method

.method public getOfflineUrlForOnlineUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 460
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetOfflineUrlForOnlineUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageByClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getOfflineIdsForClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Ljava/util/Set;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 266
    iget-wide v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetPageByOfflineId(JJ)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageByOfflineUrl(Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetPageByOfflineUrl(JLjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageByOnlineURL(Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetPageByOnlineURL(JLjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    return-object v0
.end method

.method public getPagesToCleanUp()Ljava/util/List;
    .locals 4

    .prologue
    .line 403
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 404
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget-wide v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeGetPagesToCleanUp(JLjava/util/List;)V

    .line 406
    return-object v0
.end method

.method public isOfflinePageModelLoaded()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    return v0
.end method

.method protected native nativeGetOfflineIdsForClientId(JLjava/lang/String;Ljava/lang/String;)[J
.end method

.method protected native nativeGetPageByOfflineId(JJ)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
.end method

.method protected offlinePageDeleted(JLorg/chromium/chrome/browser/offlinepages/ClientId;)V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    .line 514
    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;->offlinePageDeleted(JLorg/chromium/chrome/browser/offlinepages/ClientId;)V

    goto :goto_0

    .line 516
    :cond_0
    return-void
.end method

.method offlinePageModelLoaded()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    .line 487
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;

    .line 488
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;->offlinePageModelLoaded()V

    goto :goto_0

    .line 490
    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public savePage(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/offlinepages/ClientId;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;)V
    .locals 8

    .prologue
    const/4 v4, 0x3

    .line 302
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mIsNativeOfflinePageModelLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_1
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {p3, v4, v0, v2, v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;->onSavePageDone(ILjava/lang/String;J)V

    .line 307
    const-string/jumbo v0, "OfflinePages.SavePageResult"

    const/16 v1, 0x8

    invoke-static {v0, v4, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 326
    :goto_0
    return-void

    .line 312
    :cond_2
    new-instance v4, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;

    invoke-direct {v4, p0, p3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;)V

    .line 321
    const-string/jumbo v0, "OfflinePages.SavePage.FreeSpacePercentage"

    const-string/jumbo v1, "OfflinePages.SavePage.FreeSpaceMB"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->recordFreeSpaceHistograms(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-wide v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeSavePage(JLorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
