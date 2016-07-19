.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$2;
.super Ljava/lang/Object;
.source "BookmarkEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->startFolderSelectActivity(Landroid/content/Context;[Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 108
    return-void
.end method
