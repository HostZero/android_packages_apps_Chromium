.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6$1;
.super Ljava/lang/Object;
.source "BookmarkEditActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6$1;->this$1:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSavePageDone(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6$1;->this$1:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$6;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateOfflineSection()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    .line 318
    return-void
.end method
