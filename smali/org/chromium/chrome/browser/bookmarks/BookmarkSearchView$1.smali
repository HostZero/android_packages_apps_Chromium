.class Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkSearchView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->EMPTY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->sendSearchQuery()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    .line 109
    :cond_1
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V
    .locals 2

    .prologue
    .line 115
    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->sendSearchQuery()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    .line 118
    :cond_0
    return-void
.end method
