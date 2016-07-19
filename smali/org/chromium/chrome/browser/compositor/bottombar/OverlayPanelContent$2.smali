.class Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "OverlayPanelContent.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onContentLoadFinished()V

    .line 297
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # setter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsProcessingPendingNavigation:Z
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$402(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Z)Z

    .line 288
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mLoadedUrl:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$300(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->isHttpFailureCode(I)Z
    invoke-static {v2, p5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$500(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;I)Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onMainFrameNavigation(Ljava/lang/String;ZZ)V

    .line 291
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onContentLoadStarted(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 277
    if-eqz p5, :cond_0

    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mLoadedUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$300(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p6, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onMainFrameLoadStarted(Ljava/lang/String;Z)V

    .line 281
    :cond_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigationEntryCommitted()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onNavigationEntryCommitted()V

    .line 271
    return-void
.end method
