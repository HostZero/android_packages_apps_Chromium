.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 813
    :goto_0
    return-void

    .line 805
    :cond_0
    if-eqz p1, :cond_1

    .line 806
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$3100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsPersistentAndClearOldToken(I)I

    move-result v1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$3102(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I

    goto :goto_0

    .line 810
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$3100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->hideControlsPersistent(I)V

    .line 811
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$14;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    const/4 v1, -0x1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFullscreenMenuToken:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$3102(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)I

    goto :goto_0
.end method
