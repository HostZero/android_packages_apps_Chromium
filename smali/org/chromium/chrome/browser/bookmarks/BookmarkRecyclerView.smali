.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BookmarkRecyclerView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->setLayoutManager(Landroid/support/v7/widget/aN;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->setHasFixedSize(Z)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;Landroid/support/v7/widget/aG;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->updateEmptyViewVisibility(Landroid/support/v7/widget/aG;)V

    return-void
.end method

.method private updateEmptyViewVisibility(Landroid/support/v7/widget/aG;)V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/support/v7/widget/aG;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/support/v7/widget/aG;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->getAdapter()Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/aG;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    return-object v0
.end method

.method public getDelegateForTesting()Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    return-object v0
.end method

.method public onAllBookmarksStateSet()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->scrollToPosition(I)V

    .line 123
    return-void
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 2

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 110
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 112
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->setAdapter(Landroid/support/v7/widget/aG;)V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 118
    return-void
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->scrollToPosition(I)V

    .line 134
    return-void
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->scrollToPosition(I)V

    .line 128
    return-void
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 139
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->g()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->getLayoutManager()Landroid/support/v7/widget/aN;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aN;->c(I)Landroid/view/View;

    move-result-object v0

    .line 141
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/aG;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/aG;)V

    .line 67
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;Landroid/support/v7/widget/aG;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aG;->registerAdapterDataObserver(Landroid/support/v7/widget/aI;)V

    .line 86
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->updateEmptyViewVisibility(Landroid/support/v7/widget/aG;)V

    .line 87
    return-void
.end method

.method setEmptyView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->mEmptyView:Landroid/view/View;

    .line 60
    return-void
.end method
