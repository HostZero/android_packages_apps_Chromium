.class Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkActionBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getSelectedBookmarks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;->onSelectionStateChange(Ljava/util/List;)V

    .line 50
    return-void
.end method
