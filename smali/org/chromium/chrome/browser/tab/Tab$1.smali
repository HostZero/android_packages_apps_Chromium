.class Lorg/chromium/chrome/browser/tab/Tab$1;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "Tab.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$1;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method

.method private onScrollingStateChanged()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$1;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v1

    .line 525
    if-nez v1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$1;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$1;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->onContentViewScrollingStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onFlingEndGesture(II)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab$1;->onScrollingStateChanged()V

    .line 511
    return-void
.end method

.method public onFlingStartGesture(IIII)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab$1;->onScrollingStateChanged()V

    .line 506
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab$1;->onScrollingStateChanged()V

    .line 521
    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab$1;->onScrollingStateChanged()V

    .line 516
    return-void
.end method
