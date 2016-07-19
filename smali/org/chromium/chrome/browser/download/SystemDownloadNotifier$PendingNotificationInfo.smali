.class Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;
.super Ljava/lang/Object;
.source "SystemDownloadNotifier.java"


# instance fields
.field public final downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field public final intent:Landroid/content/Intent;

.field public final startTime:J

.field public final type:I


# direct methods
.method public constructor <init>(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->type:I

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 56
    iput-object p3, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->intent:Landroid/content/Intent;

    .line 57
    iput-wide p4, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->startTime:J

    .line 58
    return-void
.end method
