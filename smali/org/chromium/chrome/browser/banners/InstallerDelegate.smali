.class public Lorg/chromium/chrome/browser/banners/InstallerDelegate;
.super Ljava/lang/Object;
.source "InstallerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mMsBetweenRuns:J

.field private mMsMaximumWaitingTime:J

.field private final mObserver:Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private mTimestampStarted:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/pm/PackageManager;Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 72
    iput-object p3, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mObserver:Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;

    .line 73
    iput-object p4, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mPackageName:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsBetweenRuns:J

    .line 75
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsMaximumWaitingTime:J

    .line 76
    return-void
.end method

.method private isInstalled()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 111
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 114
    :cond_0
    return v2

    .line 111
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mIsRunning:Z

    .line 130
    return-void
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->isInstalled()Z

    move-result v2

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mTimestampStarted:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsMaximumWaitingTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 95
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mIsRunning:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mObserver:Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;

    invoke-interface {v0, p0, v2}, Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;->onInstallFinished(Lorg/chromium/chrome/browser/banners/InstallerDelegate;Z)V

    .line 97
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mIsRunning:Z

    .line 101
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsBetweenRuns:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method setTimingForTests(JJ)V
    .locals 1

    .prologue
    .line 148
    iput-wide p1, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsBetweenRuns:J

    .line 149
    iput-wide p3, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsMaximumWaitingTime:J

    .line 150
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mTimestampStarted:J

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mIsRunning:Z

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->mMsBetweenRuns:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method
