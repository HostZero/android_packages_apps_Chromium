.class Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;
.super Ljava/lang/Object;
.source "DownloadNotificationService.java"


# instance fields
.field public final downloadId:I

.field public final fileName:Ljava/lang/String;

.field public final isResumable:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    .line 71
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->fileName:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->isResumable:Z

    .line 73
    return-void
.end method

.method static parseFromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    .line 83
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 84
    array-length v0, v1

    if-ne v0, v2, :cond_0

    .line 86
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    const-string/jumbo v0, "1"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 88
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-direct {v0, v2, v1, v3}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;-><init>(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    const-string/jumbo v0, "DownloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception while parsing pending download:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    const/4 v1, -0x1

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v5}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;-><init>(ILjava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method getNotificationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->isResumable:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
