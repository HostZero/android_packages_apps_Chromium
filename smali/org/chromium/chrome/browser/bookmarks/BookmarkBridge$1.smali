.class Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkBridge.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public bookmarkModelLoaded()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 301
    return-void
.end method
