.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$3;
.super Ljava/lang/Object;
.source "ChromeDownloadDelegate.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field final synthetic val$callbackId:J


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;J)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$3;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$3;->val$callbackId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-static {}, Lorg/chromium/content/browser/DownloadController;->getInstance()Lorg/chromium/content/browser/DownloadController;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$3;->val$callbackId:J

    array-length v4, p2

    if-lez v4, :cond_0

    aget v4, p2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/content/browser/DownloadController;->onRequestFileAccessResult(JZ)V

    .line 311
    return-void
.end method
