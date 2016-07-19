.class Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "CustomTabLayoutManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->access$000(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v5

    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v6

    move v8, v7

    move v10, v9

    invoke-virtual/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreated(JIIIZZFF)V

    .line 36
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 7

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->access$200(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v4

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelected(JIIZ)V

    .line 42
    return-void
.end method
