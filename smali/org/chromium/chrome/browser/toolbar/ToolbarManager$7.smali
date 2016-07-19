.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$7;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "ToolbarManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateBookmarkButtonStatus()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1700(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 476
    return-void
.end method
