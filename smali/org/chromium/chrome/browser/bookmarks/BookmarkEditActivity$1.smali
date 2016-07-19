.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkEditActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateViewContent(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Z)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->finish()V

    goto :goto_0
.end method
