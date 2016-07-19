.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$7;
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
    .line 327
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$7;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$7;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->recordOfflineButtonAction(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Z)V

    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$7;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->openBookmark()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$600(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    .line 332
    return-void
.end method
