.class Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;
.super Ljava/lang/Object;
.source "FullscreenHtmlApiHandler.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$300(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    :cond_0
    sub-int v0, p5, p3

    sub-int v1, p9, p7

    if-gt v0, v1, :cond_1

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$200(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;->shouldShowNotificationToast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    # invokes: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->showNotificationToast()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$400(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)V

    .line 304
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
