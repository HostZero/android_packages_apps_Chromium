.class Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;
.super Landroid/widget/ListView;
.source "BookmarkDrawerListView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# instance fields
.field private final mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

.field private mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    return-object v0
.end method


# virtual methods
.method public onAllBookmarksStateSet()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->updateList()V

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItemPosition(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->setItemChecked(IZ)V

    .line 110
    return-void
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 94
    invoke-interface {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->setBookmarkUIDelegate(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 96
    invoke-interface {p1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mBookmarkModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 103
    return-void
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->updateList()V

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItemPosition(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->setItemChecked(IZ)V

    .line 124
    return-void
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->updateList()V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItemPosition(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->setItemChecked(IZ)V

    .line 117
    return-void
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method showLoadingUi()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->clear()V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->notifyDataSetChanged()V

    .line 86
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->clearChoices()V

    .line 87
    return-void
.end method
