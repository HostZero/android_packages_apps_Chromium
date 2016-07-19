.class Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "ReaderModeManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

.field final synthetic val$readerTabId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    iput p3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->val$readerTabId:I

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    if-eqz p4, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-static {p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$200(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->val$readerTabId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    .line 433
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 436
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePageUrl:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$300(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 440
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # setter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsUmaRecorded:Z
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$402(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Z)Z

    .line 442
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePageUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$302(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1, v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0

    .line 447
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 404
    if-nez p5, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->val$readerTabId:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$100(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 412
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$200(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->val$readerTabId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    .line 413
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p6}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setUrl(Ljava/lang/String;)V

    .line 416
    invoke-static {p6}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 418
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # setter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePageUrl:Ljava/lang/String;
    invoke-static {v0, p6}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$302(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public navigationEntryCommitted()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$200(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;->val$readerTabId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    .line 455
    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setIsDismissed(Z)V

    goto :goto_0
.end method
