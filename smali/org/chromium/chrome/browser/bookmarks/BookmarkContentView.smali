.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;
.super Landroid/widget/RelativeLayout;
.source "BookmarkContentView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# instance fields
.field private mActionBar:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mItemsContainer:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

.field private mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onAllBookmarksStateSet()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->hideLoadingUI()V

    .line 97
    return-void
.end method

.method onBackPressed()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->clearSelection()V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 2

    .prologue
    .line 83
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mItemsContainer:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mActionBar:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 92
    return-void
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->hideLoadingUI()V

    .line 107
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 46
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_items_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mItemsContainer:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    .line 47
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_empty_view:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    sget v1, Lorg/chromium/chrome/R$string;->bookmarks_folder_empty:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mItemsContainer:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 50
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_action_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mActionBar:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    .line 51
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_initial_loading_view:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/LoadingView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    .line 52
    sget v0, Lorg/chromium/chrome/R$id;->shadow:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FadingShadowView;

    .line 53
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/ui/base/DeviceFormFactor;->isLargeTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/FadingShadowView;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->bookmark_app_bar_shadow_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/widget/FadingShadowView;->init(II)V

    goto :goto_0
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->hideLoadingUI()V

    .line 102
    return-void
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method showLoadingUi()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mActionBar:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->showLoadingUi()V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->mLoadingView:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->showLoadingUI()V

    .line 77
    return-void
.end method
