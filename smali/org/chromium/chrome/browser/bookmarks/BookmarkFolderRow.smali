.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;
.source "BookmarkFolderRow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic isChecked()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isChecked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onAllBookmarksStateSet()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onAllBookmarksStateSet()V

    return-void
.end method

.method public bridge synthetic onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openFolder(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 39
    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onFinishInflate()V

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->bookmark_folder:I

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method

.method public bridge synthetic onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V

    return-void
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onSelectionStateChange(Ljava/util/List;)V

    return-void
.end method

.method setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 3

    .prologue
    .line 43
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderRow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object v0
.end method

.method public bridge synthetic setChecked(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic toggle()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->toggle()V

    return-void
.end method
