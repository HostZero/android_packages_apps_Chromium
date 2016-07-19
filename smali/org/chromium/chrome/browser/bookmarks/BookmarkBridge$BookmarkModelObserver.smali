.class public abstract Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.super Ljava/lang/Object;
.source "BookmarkBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkAllUserNodesRemoved()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 117
    return-void
.end method

.method public abstract bookmarkModelChanged()V
.end method

.method public bookmarkModelLoaded()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 141
    return-void
.end method

.method public bookmarkNodeAdded(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 83
    return-void
.end method

.method public bookmarkNodeChanged(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 125
    return-void
.end method

.method public bookmarkNodeChildrenReordered(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 134
    return-void
.end method

.method public bookmarkNodeMoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 74
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 109
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V
    .locals 0

    .prologue
    .line 95
    if-eqz p4, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V

    goto :goto_0
.end method

.method public editBookmarksEnabledChanged()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;->bookmarkModelChanged()V

    .line 148
    return-void
.end method
