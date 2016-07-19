.class Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;
.super Ljava/lang/Object;
.source "BookmarkAddActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->addBookmarkSilently(Landroid/content/Context;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->startEditActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->finish()V

    .line 55
    return-void
.end method
