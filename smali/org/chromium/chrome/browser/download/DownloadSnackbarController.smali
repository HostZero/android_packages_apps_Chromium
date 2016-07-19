.class public Lorg/chromium/chrome/browser/download/DownloadSnackbarController;
.super Ljava/lang/Object;
.source "DownloadSnackbarController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openDownloadsPage(Landroid/content/Context;)V

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    check-cast p1, Landroid/util/Pair;

    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    .line 37
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openDownloadedContent(J)V

    .line 38
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->cancelNotification(I)V

    goto :goto_0
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setDuration(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    .line 82
    if-eqz p2, :cond_1

    .line 83
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$string;->open_downloaded_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 87
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    goto :goto_0
.end method

.method public onDownloadSucceeded(Lorg/chromium/content/browser/DownloadInfo;JZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->download_succeeded_message:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    .line 59
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setDuration(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 60
    const/4 v0, 0x0

    .line 61
    if-eqz p4, :cond_1

    .line 62
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 65
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->open_downloaded_label:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 67
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    goto :goto_0
.end method
