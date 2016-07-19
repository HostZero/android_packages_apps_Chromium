.class Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkDrawerListView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 34
    return-void
.end method
