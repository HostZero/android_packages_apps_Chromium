.class Lorg/chromium/chrome/browser/ChromeActivity$10;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;

.field final synthetic val$bookmarkId:J

.field final synthetic val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field final synthetic val$tabToBookmark:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;JLorg/chromium/chrome/browser/bookmarks/BookmarkModel;)V
    .locals 1

    .prologue
    .line 1052
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$tabToBookmark:Lorg/chromium/chrome/browser/tab/Tab;

    iput-wide p3, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$bookmarkId:J

    iput-object p5, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$tabToBookmark:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$tabToBookmark:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$bookmarkId:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->val$tabToBookmark:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/ChromeActivity$10;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->addOrEditBookmark(JLorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;)V

    .line 1060
    :cond_0
    return-void
.end method
