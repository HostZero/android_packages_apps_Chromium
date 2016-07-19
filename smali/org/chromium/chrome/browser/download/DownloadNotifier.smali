.class public interface abstract Lorg/chromium/chrome/browser/download/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# virtual methods
.method public abstract cancelNotification(I)V
.end method

.method public abstract clearPendingDownloads()V
.end method

.method public abstract notifyDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;)V
.end method

.method public abstract notifyDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;J)V
.end method

.method public abstract notifyDownloadSuccessful(Lorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;)V
.end method
