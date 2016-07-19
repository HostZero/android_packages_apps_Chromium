.class final Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;
.super Ljava/lang/Object;
.source "ScreenshotTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;->val$callback:Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;

    iput-object p2, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;->val$callback:Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;->onGotBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    return-void
.end method
