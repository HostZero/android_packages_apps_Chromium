.class final Lorg/chromium/chrome/browser/feedback/ScreenshotTask$2;
.super Ljava/lang/Object;
.source "ScreenshotTask.java"

# interfaces
.implements Lorg/chromium/chrome/browser/feedback/ScreenshotTask$SnapshotResultCallback;


# instance fields
.field final synthetic val$callback:Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$2;->val$callback:Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted([B)V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$2;->val$callback:Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v2, p1

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;->onGotBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
