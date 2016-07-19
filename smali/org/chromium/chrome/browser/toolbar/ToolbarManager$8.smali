.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;
.super Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;
.source "ToolbarManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindToolbarHidden()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->handleFindToolbarStateChange(Z)V

    .line 495
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->hideControlsPersistent(I)V

    .line 497
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    const/4 v1, -0x1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1902(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I

    .line 499
    :cond_0
    return-void
.end method

.method public onFindToolbarShown()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->handleFindToolbarStateChange(Z)V

    .line 485
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsPersistentAndClearOldToken(I)I

    move-result v1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenFindInPageToken:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1902(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I

    .line 490
    :cond_0
    return-void
.end method
