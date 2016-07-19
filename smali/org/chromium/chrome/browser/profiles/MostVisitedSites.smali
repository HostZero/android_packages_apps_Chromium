.class public Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
.super Ljava/lang/Object;
.source "MostVisitedSites.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeMostVisitedSites:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    return-wide v0
.end method

.method private native nativeAddOrRemoveBlacklistedUrl(JLjava/lang/String;Z)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetURLThumbnail(JLjava/lang/String;Lorg/chromium/chrome/browser/profiles/MostVisitedSites$ThumbnailCallback;)V
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private native nativeRecordOpenedMostVisitedItem(JII)V
.end method

.method private native nativeRecordTileTypeMetrics(J[I)V
.end method

.method private native nativeSetMostVisitedURLsObserver(JLorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V
.end method


# virtual methods
.method public addBlacklistedUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeAddOrRemoveBlacklistedUrl(JLjava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    sget-boolean v0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeDestroy(J)V

    .line 78
    iput-wide v2, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    .line 79
    return-void
.end method

.method public recordOpenedMostVisitedItem(II)V
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeRecordOpenedMostVisitedItem(JII)V

    .line 162
    return-void
.end method

.method public recordTileTypeMetrics([I)V
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeRecordTileTypeMetrics(J[I)V

    .line 153
    return-void
.end method

.method public removeBlacklistedUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeAddOrRemoveBlacklistedUrl(JLjava/lang/String;Z)V

    .line 144
    return-void
.end method

.method public setMostVisitedURLsObserver(Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;-><init>(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;)V

    .line 109
    iget-wide v2, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J

    invoke-direct {p0, v2, v3, v0, p2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->nativeSetMostVisitedURLsObserver(JLorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V

    .line 110
    return-void
.end method
