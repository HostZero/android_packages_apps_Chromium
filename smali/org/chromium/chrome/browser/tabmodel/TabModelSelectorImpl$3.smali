.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "TabModelSelectorImpl.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->removeTabThumbnail(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->onTabCrashed(I)V

    .line 221
    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->handleOnPageLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$100(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 193
    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->onPageLoadFailed(I)V

    .line 213
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;->onPageLoadFinished(I)V

    .line 208
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->invalidateTabThumbnail(ILjava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->removeTabThumbnail(I)V

    goto :goto_0
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->invalidateIfChanged(ILjava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method
