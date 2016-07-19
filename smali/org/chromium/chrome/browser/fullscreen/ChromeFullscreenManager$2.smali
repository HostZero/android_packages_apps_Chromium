.class Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;
.super Ljava/lang/Object;
.source "ChromeFullscreenManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPendingEnterFullscreen()Z
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$900(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Z

    move-result v0

    .line 255
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$902(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)Z

    .line 256
    return v0
.end method

.method public onEnterFullscreen()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # invokes: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveTab()Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$700(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    # getter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$800(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getHtmlApiHandler()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    const/4 v2, 0x1

    # setter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$902(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)Z

    .line 248
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    goto :goto_0
.end method

.method public onFullscreenExited(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-virtual {p1, v0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTopControlsState(IZ)V

    .line 264
    return-void
.end method

.method public shouldShowNotificationToast()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->isOverlayVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
