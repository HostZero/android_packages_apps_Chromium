.class Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;
.super Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;
.source "Tab.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public enterFullscreenVideo(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0, p1}, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->enterFullscreenVideo(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setOverlayVideoMode(Z)V

    .line 479
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateDoubleTapSupport(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    .line 489
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setOverlayVideoMode(Z)V

    .line 491
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient$1;->this$1:Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateDoubleTapSupport(Z)V

    .line 495
    :cond_0
    invoke-super {p0}, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->exitFullscreenVideo()V

    .line 496
    return-void
.end method
