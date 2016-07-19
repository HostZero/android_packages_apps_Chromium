.class Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;
.super Ljava/lang/Object;
.source "ProfileDownloader.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;


# static fields
.field private static sPendingProfileDownloads:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;


# instance fields
.field private final mAccountIds:Ljava/util/ArrayList;

.field private final mImageSidePixels:Ljava/util/ArrayList;

.field private final mProfiles:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mProfiles:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mAccountIds:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mImageSidePixels:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 79
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->sPendingProfileDownloads:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->sPendingProfileDownloads:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;

    .line 81
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->sPendingProfileDownloads:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->addSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V

    .line 84
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->sPendingProfileDownloads:Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;

    return-object v0
.end method


# virtual methods
.method public onSystemAccountsChanged()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mImageSidePixels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    return-void
.end method

.method public onSystemAccountsSeedingComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v0

    .line 96
    :goto_0
    if-lez v3, :cond_0

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    iget-object v1, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mImageSidePixels:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    # invokes: Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->nativeStartFetchingAccountInfoFor(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v4}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->access$000(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mImageSidePixels:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public pendProfileDownload(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->mImageSidePixels:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
