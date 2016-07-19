.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "ContextualSearchManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsPromotingToTab:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    if-ne v0, p3, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 185
    :cond_2
    return-void
.end method
