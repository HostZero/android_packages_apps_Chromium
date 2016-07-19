.class interface abstract Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
.super Ljava/lang/Object;
.source "BookmarkDelegate.java"


# virtual methods
.method public abstract addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V
.end method

.method public abstract clearSelection()V
.end method

.method public abstract closeDrawer()V
.end method

.method public abstract closeSearchUI()V
.end method

.method public abstract doesDrawerExist()Z
.end method

.method public abstract getCurrentState()I
.end method

.method public abstract getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
.end method

.method public abstract getLargeIconBridge()Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
.end method

.method public abstract getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
.end method

.method public abstract getSelectedBookmarks()Ljava/util/List;
.end method

.method public abstract getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
.end method

.method public abstract isBookmarkSelected(Lorg/chromium/components/bookmarks/BookmarkId;)Z
.end method

.method public abstract isDialogUi()Z
.end method

.method public abstract isSelectionEnabled()Z
.end method

.method public abstract notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V
.end method

.method public abstract openAllBookmarks()V
.end method

.method public abstract openBookmark(Lorg/chromium/components/bookmarks/BookmarkId;I)V
.end method

.method public abstract openFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
.end method

.method public abstract openFolder(Lorg/chromium/components/bookmarks/BookmarkId;)V
.end method

.method public abstract openSearchUI()V
.end method

.method public abstract removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V
.end method

.method public abstract toggleSelectionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)Z
.end method
