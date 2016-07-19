.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "ContextualSearchManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 543
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 544
    :cond_0
    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 535
    if-eqz p2, :cond_0

    .line 537
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 539
    :cond_0
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 530
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidBasePageLoadJustStart:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$302(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z

    .line 531
    return-void
.end method
