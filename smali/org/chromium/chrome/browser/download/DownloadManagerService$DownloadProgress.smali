.class Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadManagerService.java"


# instance fields
.field volatile mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field volatile mDownloadStatus:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

.field final mStartTimeInMillis:J

.field volatile mUpdateNotification:Z


# direct methods
.method constructor <init>(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;Z)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-wide p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mStartTimeInMillis:J

    .line 129
    iput-object p3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 130
    iput-object p4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mDownloadStatus:Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadStatus;

    .line 131
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadProgress;->mUpdateNotification:Z

    .line 132
    return-void
.end method
