.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;
.super Ljava/lang/Object;
.source "OfflinePageStorageSpacePolicy.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 30
    return-void
.end method

.method private getSizeOfPagesToCleanUp()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPagesToCleanUp()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->getTotalSize(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalSize(Ljava/util/List;)J
    .locals 5

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    .line 58
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getFileSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public getSizeOfAllPages()J
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getAllPages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->getTotalSize(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPagesToCleanUp()Z
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->getSizeOfPagesToCleanUp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowStorageSpaceHeader()Z
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->getSizeOfAllPages()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->getSizeOfPagesToCleanUp()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
