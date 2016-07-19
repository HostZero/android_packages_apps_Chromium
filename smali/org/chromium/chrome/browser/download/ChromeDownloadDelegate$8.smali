.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;
.super Ljava/lang/Object;
.source "ChromeDownloadDelegate.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field final synthetic val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 611
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$8;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->onDownloadStartNoStream(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 615
    :cond_0
    return-void
.end method
