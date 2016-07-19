.class Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkSearchView.java"


# instance fields
.field private mBookmarktList:Ljava/util/List;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;Ljava/util/List;Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 374
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 375
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->mBookmarktList:Ljava/util/List;

    .line 376
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->mBookmarktList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->mBookmarktList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 390
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;

    move-result-object v2

    .line 396
    if-nez p2, :cond_0

    .line 397
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->bookmark_search_row:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 400
    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;

    .line 401
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 402
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;->getBookmarkId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    .line 403
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->setSearchHistoryDelegate(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;)V

    .line 404
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
