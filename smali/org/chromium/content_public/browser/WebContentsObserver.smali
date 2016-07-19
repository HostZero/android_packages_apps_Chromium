.class public abstract Lorg/chromium/content_public/browser/WebContentsObserver;
.super Ljava/lang/Object;
.source "WebContentsObserver.java"


# instance fields
.field private mWebContents:Ljava/lang/ref/WeakReference;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContents;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 24
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContents;

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0}, Lorg/chromium/content_public/browser/WebContents;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method

.method public didAttachInterstitialPage()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public didFinishNavigation(ZZZ)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public didStartNavigationToPendingEntry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public documentAvailableInMainFrame()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public documentLoadedInFrame(JZ)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public mediaSessionStateChanged(ZZLorg/chromium/content_public/common/MediaMetadata;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public renderViewReady()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
