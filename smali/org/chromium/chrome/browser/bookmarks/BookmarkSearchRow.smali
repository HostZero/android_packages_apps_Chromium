.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;
.source "BookmarkSearchRow.java"


# instance fields
.field private mHistoryDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected isSelectable()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openBookmark(Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->mHistoryDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;->saveSearchHistory()V

    .line 59
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->onFinishInflate()V

    .line 42
    return-void
.end method

.method setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method setSearchHistoryDelegate(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow;->mHistoryDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;

    .line 66
    return-void
.end method
