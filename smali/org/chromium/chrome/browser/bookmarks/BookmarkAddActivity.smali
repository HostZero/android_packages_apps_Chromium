.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;
.super Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;
.source "BookmarkAddActivity.java"


# instance fields
.field private mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    return-object v0
.end method


# virtual methods
.method public finishNativeInitialization()V
    .locals 4

    .prologue
    .line 34
    const-string/jumbo v0, "MobileAddBookmarkViaIntent"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {p0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;->kickOffReading(Landroid/content/Context;)V

    .line 44
    new-instance v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 45
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    new-instance v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->runAfterBookmarkModelLoaded(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onDestroy()V

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 66
    :cond_0
    return-void
.end method

.method protected setContentView()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
