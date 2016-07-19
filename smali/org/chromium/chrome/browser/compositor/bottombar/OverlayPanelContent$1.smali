.class Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;
.super Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.source "OverlayPanelContent.java"


# instance fields
.field private mIsFullscreen:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;-><init>()V

    return-void
.end method


# virtual methods
.method public isFullscreenForTabOrPending()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;->mIsFullscreen:Z

    return v0
.end method

.method public onLoadProgressChanged(I)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->onLoadProgressChanged(I)V

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mProgressObserver:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$200(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;->onProgressBarUpdated(I)V

    .line 174
    return-void
.end method

.method public onLoadStarted(Z)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->onLoadStarted(Z)V

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mProgressObserver:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$200(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;->onProgressBarStarted()V

    .line 162
    return-void
.end method

.method public onLoadStopped()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->onLoadStopped()V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mProgressObserver:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$200(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;->onProgressBarFinished()V

    .line 168
    return-void
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;->mIsFullscreen:Z

    .line 179
    return-void
.end method
