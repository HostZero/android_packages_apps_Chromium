.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 46
    invoke-static/range {p0 .. p6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showSnackbarForAddingBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static addBookmarkSilently(Landroid/content/Context;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 91
    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->getLastUsedParent(Landroid/content/Context;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getDefaultFolder()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 96
    :cond_1
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getChildCount(Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addBookmark(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    return-object v0
.end method

.method public static addOrEditBookmark(JLorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->shouldSkipSavingTabOffline(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v5

    .line 65
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    invoke-static {p5, v0, v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->startEditActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;)V

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {p5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->getLastUsedParent(Landroid/content/Context;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    :cond_2
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getDefaultFolder()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    .line 76
    :cond_3
    invoke-virtual {p2, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getChildCount(Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v2

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p4, p5, v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->createAddBookmarkCallback(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;

    move-result-object v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addBookmarkAsync(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;)V

    goto :goto_0
.end method

.method private static createAddBookmarkCallback(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method private static createSnackbarControllerForEditButton(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;)V

    return-object v0
.end method

.method private static createSnackbarControllerForFreeUpSpaceButton(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static finishActivityOnPhone(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 425
    instance-of v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;

    if-eqz v0, :cond_0

    .line 426
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 428
    :cond_0
    return-void
.end method

.method private static getFirstUrlToLoad(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    .line 300
    :try_start_0
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->shouldShowOfflinePageAtFirst(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createFilterUrl(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    :goto_0
    return-object v0

    .line 304
    :cond_0
    :try_start_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->getLastUsedUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    goto :goto_0

    .line 306
    :cond_1
    const-string/jumbo v0, "chrome-native://bookmarks/"

    .line 308
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    throw v0
.end method

.method static getLastUsedParent(Landroid/content/Context;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    const-string/jumbo v2, "enhanced_bookmark_last_used_parent_folder"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "enhanced_bookmark_last_used_parent_folder"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    goto :goto_0
.end method

.method static getLastUsedUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "enhanced_bookmark_last_used_url"

    const-string/jumbo v2, "chrome-native://bookmarks/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getLaunchUrlAndMarkAccessed(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 389
    const-string/jumbo v0, "file:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    const-string/jumbo v0, "OfflinePages.LaunchLocation"

    invoke-static {v0, p3, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 397
    :goto_1
    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->openUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :cond_2
    const-string/jumbo v0, "Stars.LaunchLocation"

    invoke-static {v0, p3, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private static openUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string/jumbo v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/IntentHandler;->startActivityForTrustedIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 409
    return-void
.end method

.method static setLastUsedParent(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 3

    .prologue
    .line 334
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enhanced_bookmark_last_used_parent_folder"

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    return-void
.end method

.method static setLastUsedUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 317
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enhanced_bookmark_last_used_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    return-void
.end method

.method public static setTaskDescriptionInDocumentMode(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 415
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 419
    :cond_0
    return-void
.end method

.method private static shouldShowOfflinePageAtFirst(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getAllPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldSkipSavingTabOffline(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingErrorPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showBookmarkManager(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 282
    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->getFirstUrlToLoad(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->openUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static showSnackbarForAddingBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->createSnackbarControllerForEditButton(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object v1

    .line 110
    invoke-static {p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->getLastUsedParent(Landroid/content/Context;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_page_saved:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->bookmark_item_edit:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    .line 162
    :goto_1
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 163
    return-void

    .line 114
    :cond_0
    invoke-static {v0, v1, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->bookmark_page_saved_folder:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setTemplateText(Ljava/lang/String;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->bookmark_item_edit:I

    .line 125
    if-ne p4, v4, :cond_3

    .line 126
    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_skipped:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    move v3, v2

    move-object v2, v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 152
    :goto_2
    if-nez v0, :cond_2

    .line 153
    invoke-static {p0, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->createSnackbarControllerForEditButton(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object v0

    .line 156
    :cond_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_3
    if-eqz p5, :cond_5

    .line 129
    if-nez p4, :cond_4

    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_saved_storage_near_full:I

    :goto_3
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v3

    .line 133
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_free_up_space_title:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v0

    .line 134
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->createSnackbarControllerForFreeUpSpaceButton(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object v2

    move v6, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v6

    goto :goto_2

    .line 129
    :cond_4
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_failed_to_save_storage_near_full:I

    goto :goto_3

    .line 137
    :cond_5
    if-nez p4, :cond_7

    .line 138
    invoke-static {p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->getLastUsedParent(Landroid/content/Context;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    if-nez v2, :cond_6

    .line 139
    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_saved:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    move v3, v2

    move-object v2, v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2

    .line 142
    :cond_6
    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_saved_folder:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v3

    .line 144
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkTitle(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/lang/String;

    move-result-object v2

    move v6, v0

    move-object v0, v1

    move v1, v6

    goto :goto_2

    .line 148
    :cond_7
    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_as_bookmarks_page_failed_to_save:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    move v3, v2

    move-object v2, v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public static startEditActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    const-string/jumbo v1, "BookmarkEditActivity.BookmarkId"

    invoke-virtual {p1}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    if-eqz p2, :cond_0

    .line 361
    const-string/jumbo v1, "BookmarkEditActivity.WebContents"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    :cond_0
    instance-of v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;

    if-eqz v1, :cond_1

    .line 364
    check-cast p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
