.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5$1;
.super Ljava/lang/Object;
.source "BookmarkEditActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5$1;->this$1:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletePageDone(I)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5$1;->this$1:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateOfflineSection()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    .line 295
    return-void
.end method
