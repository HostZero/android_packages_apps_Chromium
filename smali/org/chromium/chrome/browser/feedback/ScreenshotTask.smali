.class public final Lorg/chromium/chrome/browser/feedback/ScreenshotTask;
.super Ljava/lang/Object;
.source "ScreenshotTask.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;)V
    .locals 2

    .prologue
    .line 50
    instance-of v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    check-cast p0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->createCompositorScreenshot(Lorg/chromium/ui/base/WindowAndroid;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;)V

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->prepareScreenshot(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;

    invoke-direct {v1, p1, v0}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$1;-><init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static createCompositorScreenshot(Lorg/chromium/ui/base/WindowAndroid;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;)V
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$2;

    invoke-direct {v0, p2}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$2;-><init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;)V

    .line 87
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v2, v3, v1, v4}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->nativeGrabWindowSnapshotAsync(Lorg/chromium/chrome/browser/feedback/ScreenshotTask$SnapshotResultCallback;JII)V

    .line 89
    return-void
.end method

.method private static native nativeGrabWindowSnapshotAsync(Lorg/chromium/chrome/browser/feedback/ScreenshotTask$SnapshotResultCallback;JII)V
.end method

.method private static notifySnapshotFinished(Ljava/lang/Object;[B)V
    .locals 0

    .prologue
    .line 117
    check-cast p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$SnapshotResultCallback;

    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask$SnapshotResultCallback;->onCompleted([B)V

    .line 118
    return-void
.end method

.method private static prepareScreenshot(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/16 v2, 0x258

    .line 99
    if-nez p1, :cond_2

    .line 100
    if-nez p0, :cond_1

    const/4 p1, 0x0

    .line 112
    :cond_0
    :goto_0
    return-object p1

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Lorg/chromium/ui/UiUtils;->generateScaledScreenshot(Landroid/view/View;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 107
    if-le v0, v2, :cond_0

    .line 109
    const/high16 v1, 0x44160000    # 600.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 112
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method
