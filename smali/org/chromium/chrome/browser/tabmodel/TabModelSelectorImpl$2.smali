.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "TabModelSelectorImpl.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->invalidateIfChanged(ILjava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method
