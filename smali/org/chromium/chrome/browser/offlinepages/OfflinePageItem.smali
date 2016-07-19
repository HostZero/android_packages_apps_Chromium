.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
.super Ljava/lang/Object;
.source "OfflinePageItem.java"


# instance fields
.field private final mAccessCount:I

.field private final mClientId:Lorg/chromium/chrome/browser/offlinepages/ClientId;

.field private final mCreationTimeMs:J

.field private final mFileSize:J

.field private final mLastAccessTimeMs:J

.field private final mOfflineId:J

.field private final mOfflineUrl:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mUrl:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mOfflineId:J

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/ClientId;

    invoke-direct {v0, p4, p5}, Lorg/chromium/chrome/browser/offlinepages/ClientId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mClientId:Lorg/chromium/chrome/browser/offlinepages/ClientId;

    .line 28
    iput-object p6, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mOfflineUrl:Ljava/lang/String;

    .line 29
    iput-wide p7, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mFileSize:J

    .line 30
    iput-wide p9, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mCreationTimeMs:J

    .line 31
    iput p11, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mAccessCount:I

    .line 32
    iput-wide p12, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mLastAccessTimeMs:J

    .line 33
    return-void
.end method


# virtual methods
.method public getAccessCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mAccessCount:I

    return v0
.end method

.method public getClientId()Lorg/chromium/chrome/browser/offlinepages/ClientId;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mClientId:Lorg/chromium/chrome/browser/offlinepages/ClientId;

    return-object v0
.end method

.method public getCreationTimeMs()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mCreationTimeMs:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mFileSize:J

    return-wide v0
.end method

.method public getLastAccessTimeMs()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mLastAccessTimeMs:J

    return-wide v0
.end method

.method public getOfflineId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mOfflineId:J

    return-wide v0
.end method

.method public getOfflineUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mOfflineUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method
