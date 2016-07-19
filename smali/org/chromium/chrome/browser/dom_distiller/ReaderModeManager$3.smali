.class Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;
.super Ljava/lang/Object;
.source "ReaderModeManager.java"

# interfaces
.implements Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;I)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    iput p2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->val$tabId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPageDistillableResult(ZZ)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 544
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$100(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$200(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/util/Map;

    move-result-object v0

    iget v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->val$tabId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    .line 547
    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$100(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v3

    iget v4, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->val$tabId:I

    invoke-interface {v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 552
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    if-eqz p1, :cond_4

    .line 558
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 560
    iget v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->val$tabId:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v4}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$100(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v4

    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 562
    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 567
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsUmaRecorded:Z
    invoke-static {v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$400(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getStatus()I

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_0

    .line 568
    :cond_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # setter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsUmaRecorded:Z
    invoke-static {v3, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$402(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Z)Z

    .line 569
    const-string/jumbo v3, "DomDistiller.PageDistillable"

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0

    .line 565
    :cond_4
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 569
    goto :goto_2
.end method
