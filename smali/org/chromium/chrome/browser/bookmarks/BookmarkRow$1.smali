.class Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkRow.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v1, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isMovable()Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
