.class Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;
.super Ljava/lang/Object;
.source "BookmarkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mSearchView:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mDrawerListView:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mContentView:Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$500(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkContentView;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mInitialUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$600(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mInitialUrl:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$600(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createStateFromUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    .line 107
    :cond_0
    return-void
.end method
