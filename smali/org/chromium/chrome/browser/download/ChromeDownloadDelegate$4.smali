.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$4;
.super Ljava/lang/Object;
.source "ChromeDownloadDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field final synthetic val$callbackId:J


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;J)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$4;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$4;->val$callbackId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 332
    invoke-static {}, Lorg/chromium/content/browser/DownloadController;->getInstance()Lorg/chromium/content/browser/DownloadController;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$4;->val$callbackId:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/content/browser/DownloadController;->onRequestFileAccessResult(JZ)V

    .line 334
    return-void
.end method
