.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$layoutDriver:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

.field final synthetic val$overviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->val$overviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    iput-object p3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->val$layoutDriver:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->refreshSelectedTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 636
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 600
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 601
    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mHomepageStateListener:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->removeListener(Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;)V

    .line 602
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 603
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 604
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;
    invoke-static {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->destroy()V

    .line 608
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mBookmarkBridge:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2402(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 610
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2500(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 611
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2500(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->removeObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V

    .line 612
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mTemplateUrlObserver:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2502(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    .line 616
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarObservers:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2700(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    .line 618
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
    invoke-static {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->removeObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    goto :goto_1

    .line 622
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->val$overviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->val$overviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mOverviewModeObserver:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;->removeOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V

    .line 625
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->val$layoutDriver:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_5

    .line 626
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->val$layoutDriver:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$11;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mSceneChangeObserver:Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$2900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->removeSceneChangeObserver(Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;)V

    .line 628
    :cond_5
    return-void
.end method
