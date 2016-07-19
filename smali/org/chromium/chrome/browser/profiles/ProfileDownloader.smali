.class public Lorg/chromium/chrome/browser/profiles/ProfileDownloader;
.super Ljava/lang/Object;
.source "ProfileDownloader.java"


# static fields
.field private static final sObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->sObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->nativeStartFetchingAccountInfoFor(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static addObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public static getCachedAvatar(Lorg/chromium/chrome/browser/profiles/Profile;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->nativeGetCachedAvatarForPrimaryAccount(Lorg/chromium/chrome/browser/profiles/Profile;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedFullName(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->nativeGetCachedFullNameForPrimaryAccount(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetCachedAvatarForPrimaryAccount(Lorg/chromium/chrome/browser/profiles/Profile;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetCachedFullNameForPrimaryAccount(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/String;
.end method

.method private static native nativeGetCachedGivenNameForPrimaryAccount(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/String;
.end method

.method private static native nativeStartFetchingAccountInfoFor(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V
.end method

.method private static onProfileDownloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 138
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;

    .line 139
    invoke-interface {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;->onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public static removeObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public static startFetchingAccountInfoFor(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 126
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->checkAndSeedSystemAccounts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader$PendingProfileDownloads;->pendProfileDownload(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;I)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->nativeStartFetchingAccountInfoFor(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
