.class Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "ContentViewCore.java"


# instance fields
.field private final mWeakContentViewCore:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    .line 306
    return-void
.end method

.method private determinedProcessVisibility()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 345
    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentRenderProcessId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->determinedVisibility(I)V

    goto :goto_0
.end method

.method private resetPopupsAndInput()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 336
    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v1, 0x0

    # setter for: Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$402(Lorg/chromium/content/browser/ContentViewCore;Z)Z

    .line 338
    # invokes: Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$500(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 339
    # invokes: Lorg/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$600(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 340
    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 314
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->determinedProcessVisibility()V

    .line 315
    :cond_0
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    .prologue
    .line 320
    if-nez p3, :cond_0

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->resetPopupsAndInput()V

    goto :goto_0
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->determinedProcessVisibility()V

    .line 332
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->resetPopupsAndInput()V

    .line 327
    return-void
.end method
