.class public Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;
.super Landroid/content/ContentProvider;
.source "ChromeBrowserProvider.java"


# static fields
.field private static final BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final BOOKMARK_IS_FOLDER_PARAM:Ljava/lang/String; = "isFolder"

.field public static final BOOKMARK_PARENT_ID_PARAM:Ljava/lang/String; = "parentId"

.field public static final BROWSER_CONTRACTS_BOOKMAKRS_API_URI:Landroid/net/Uri;

.field public static final BROWSER_CONTRACTS_COMBINED_API_URI:Landroid/net/Uri;

.field public static final BROWSER_CONTRACTS_HISTORY_API_URI:Landroid/net/Uri;

.field public static final BROWSER_CONTRACTS_SEARCHES_API_URI:Landroid/net/Uri;

.field public static final INVALID_CONTENT_PROVIDER_ID:J = 0x0L

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mInitializeUriMatcherLock:Ljava/lang/Object;

.field private mLastModifiedBookmarkFolderId:J

.field private final mLoadNativeLock:Ljava/lang/Object;

.field private mNativeChromeBrowserProvider:J

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->SEARCHES_PROJECTION:[Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BROWSER_CONTRACTS_BOOKMAKRS_API_URI:Landroid/net/Uri;

    .line 113
    const-string/jumbo v0, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v1, "searches"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BROWSER_CONTRACTS_SEARCHES_API_URI:Landroid/net/Uri;

    .line 116
    const-string/jumbo v0, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v1, "history"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BROWSER_CONTRACTS_HISTORY_API_URI:Landroid/net/Uri;

    .line 119
    const-string/jumbo v0, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v1, "combined"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BROWSER_CONTRACTS_COMBINED_API_URI:Landroid/net/Uri;

    .line 155
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "created"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 161
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "url"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "bookmark"

    aput-object v1, v0, v7

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mInitializeUriMatcherLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLoadNativeLock:Ljava/lang/Object;

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    .line 1119
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureNativeSideInitialized()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureNativeChromeDestroyedOnUIThread()V

    return-void
.end method

.method private addBookmark(Landroid/content/ContentValues;)J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 575
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    const/4 v5, 0x0

    .line 578
    const-string/jumbo v0, "isFolder"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const-string/jumbo v0, "isFolder"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 582
    :cond_0
    const-string/jumbo v0, "parentId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    const-string/jumbo v0, "parentId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 585
    :goto_0
    iget-wide v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeAddBookmark(JLjava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v0

    .line 586
    cmp-long v2, v0, v8

    if-nez v2, :cond_1

    .line 593
    :goto_1
    return-wide v0

    .line 588
    :cond_1
    if-eqz v5, :cond_2

    .line 589
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateLastModifiedBookmarkFolder(J)V

    goto :goto_1

    .line 591
    :cond_2
    invoke-direct {p0, v6, v7}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateLastModifiedBookmarkFolder(J)V

    goto :goto_1

    :cond_3
    move-wide v6, v8

    goto :goto_0
.end method

.method private addBookmarkFromAPI(Landroid/content/ContentValues;)J
    .locals 12

    .prologue
    .line 925
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;

    move-result-object v0

    .line 926
    iget-object v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 927
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have a bookmark URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_0
    iget-wide v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    iget-object v3, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mCreated:Ljava/lang/Long;

    iget-object v5, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mIsBookmark:Ljava/lang/Boolean;

    iget-object v6, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mDate:Ljava/lang/Long;

    iget-object v7, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mFavicon:[B

    iget-object v8, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mTitle:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mVisits:Ljava/lang/Integer;

    iget-wide v10, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mParentId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeAddBookmarkFromAPI(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private addSearchTermFromAPI(Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 979
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;

    move-result-object v0

    .line 980
    iget-object v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mTerm:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have a search term"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    iget-object v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mTerm:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mDate:Ljava/lang/Long;

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeAddSearchTermFromAPI(JLjava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".browser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1066
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1055
    const-string/jumbo v0, "bookmark"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    if-eqz p1, :cond_1

    const-string/jumbo v0, " = 1 "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    const-string/jumbo v0, " AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1056
    :cond_1
    const-string/jumbo v0, " = 0"

    goto :goto_0
.end method

.method private static buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildHistoryWhereClause(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildHistoryWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSuggestWhere(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_0

    .line 282
    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildWhereClause(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1034
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canHandleContentProviderApiCall()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 627
    invoke-static {}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->isInUiThread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureUriMatcherInitialized()V

    .line 629
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 630
    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLoadNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    new-instance v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 647
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ensureNativeChromeDestroyedOnUIThread()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1164
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1165
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeDestroy(J)V

    .line 1166
    iput-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    .line 1168
    :cond_0
    return-void
.end method

.method private ensureNativeSideInitialized()V
    .locals 4

    .prologue
    .line 1141
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 1142
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    .line 1143
    :cond_0
    return-void
.end method

.method private ensureUriMatcherInitialized()V
    .locals 6

    .prologue
    .line 177
    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mInitializeUriMatcherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 241
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".ChromeBrowserProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "bookmarks"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "bookmarks/#"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".browser"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "bookmarks"

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "bookmarks/#"

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "searches"

    const/4 v4, 0x4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "searches/#"

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "history"

    const/4 v4, 0x6

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "history/#"

    const/4 v4, 0x7

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "combined"

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "combined/#"

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "history"

    const/4 v5, 0x6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "history/#"

    const/4 v5, 0x7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "combined"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "combined/#"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "searches"

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "searches/#"

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "bookmarks"

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.google.android.apps.chrome.browser-contract"

    const-string/jumbo v4, "bookmarks/#"

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "history"

    const/4 v5, 0x6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "history/#"

    const/4 v5, 0x7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "combined"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "combined/#"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "searches"

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "searches/#"

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "bookmarks"

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "com.android.browser"

    const-string/jumbo v4, "bookmarks/#"

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "browser"

    const-string/jumbo v4, "bookmarks"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "browser"

    const-string/jumbo v4, "bookmarks/#"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "browser"

    const-string/jumbo v4, "searches"

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "browser"

    const-string/jumbo v4, "searches/#"

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "bookmarks/search_suggest_query"

    const/16 v4, 0xa

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "search_suggest_query"

    const/16 v4, 0xb

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getApiAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".browser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmarkHistorySuggestions(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 295
    .line 296
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    aget-object v3, p2, v0

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, p2, v0

    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildSuggestWhere(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    const-string/jumbo v0, " OR title LIKE ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    if-eqz p4, :cond_2

    .line 319
    const-string/jumbo v0, " AND bookmark=?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 324
    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 326
    new-instance v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1

    .line 302
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://www."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://www."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static getBookmarksApiUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 614
    invoke-static {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getApiAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getContentUriId(Landroid/net/Uri;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 335
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 339
    :goto_0
    return-wide v0

    .line 337
    :catch_0
    move-exception v2

    goto :goto_0

    .line 339
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private getLastModifiedBookmarkFolderId()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 270
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    const-string/jumbo v1, "last_bookmark_folder_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    .line 276
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    return-wide v0
.end method

.method private getReadWritePermissionNameForBookmarkFolders()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".permission.READ_WRITE_BOOKMARK_FOLDERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchesApiUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 619
    invoke-static {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getApiAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "searches"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1195
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isCallerValid(Landroid/content/Context;I)Z

    move-result v2

    .line 1198
    if-eqz v2, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return v0

    .line 1200
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 1201
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getReadWritePermissionNameForBookmarkFolders()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1205
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private hasReadAccess()Z
    .locals 1

    .prologue
    .line 655
    const-string/jumbo v0, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasWriteAccess()Z
    .locals 1

    .prologue
    .line 662
    const-string/jumbo v0, "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isInUiThread()Z
    .locals 2

    .prologue
    .line 1011
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1018
    :goto_0
    return v0

    .line 1013
    :cond_0
    const-string/jumbo v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1014
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Shouldn\'t run in the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_1
    const-string/jumbo v0, "ChromeBrowserProvider"

    const-string/jumbo v1, "ChromeBrowserProvider methods cannot be called from the UI thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native nativeAddBookmark(JLjava/lang/String;Ljava/lang/String;ZJ)J
.end method

.method private native nativeAddBookmarkFromAPI(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J
.end method

.method private native nativeAddSearchTermFromAPI(JLjava/lang/String;Ljava/lang/Long;)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeQueryBookmarkFromAPI(J[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;
.end method

.method private native nativeQuerySearchTermFromAPI(J[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;
.end method

.method private native nativeRemoveBookmark(JJ)I
.end method

.method private native nativeRemoveBookmarkFromAPI(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeRemoveHistoryFromAPI(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeRemoveSearchTermFromAPI(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeUpdateBookmark(JJLjava/lang/String;Ljava/lang/String;J)I
.end method

.method private native nativeUpdateBookmarkFromAPI(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeUpdateSearchTermFromAPI(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1179
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1192
    :goto_0
    return-void

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private onBookmarkChanged()V
    .locals 2

    .prologue
    .line 965
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    .line 966
    return-void
.end method

.method private onHistoryChanged()V
    .locals 2

    .prologue
    .line 970
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "history"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    .line 971
    return-void
.end method

.method private onSearchTermChanged()V
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "searches"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildAPIContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    .line 976
    return-void
.end method

.method private queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 937
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 938
    :cond_0
    sget-object v4, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 943
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeQueryBookmarkFromAPI(J[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v4, p1

    .line 940
    goto :goto_0
.end method

.method private querySearchTermFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 996
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 997
    :cond_0
    sget-object v4, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->SEARCHES_PROJECTION:[Ljava/lang/String;

    .line 1001
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeQuerySearchTermFromAPI(J[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/database/SQLiteCursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v4, p1

    .line 999
    goto :goto_0
.end method

.method private removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 956
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeRemoveBookmarkFromAPI(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private removeHistoryFromAPI(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 960
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeRemoveHistoryFromAPI(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private removeSearchFromAPI(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1006
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeRemoveSearchTermFromAPI(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14

    .prologue
    .line 949
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;

    move-result-object v0

    .line 950
    iget-wide v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    iget-object v3, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mCreated:Ljava/lang/Long;

    iget-object v5, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mIsBookmark:Ljava/lang/Boolean;

    iget-object v6, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mDate:Ljava/lang/Long;

    iget-object v7, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mFavicon:[B

    iget-object v8, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mTitle:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mVisits:Ljava/lang/Integer;

    iget-wide v10, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mParentId:J

    move-object v0, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeUpdateBookmarkFromAPI(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLastModifiedBookmarkFolder(J)V
    .locals 5

    .prologue
    .line 597
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getLastModifiedBookmarkFolderId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 599
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    .line 600
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_bookmark_folder_id"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mLastModifiedBookmarkFolderId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateSearchTermFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 988
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;

    move-result-object v0

    .line 989
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    iget-object v4, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mTerm:Ljava/lang/String;

    iget-object v5, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mDate:Ljava/lang/Long;

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeUpdateSearchTermFromAPI(JLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->hasWriteAccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContentUriId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 445
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 447
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 449
    packed-switch v0, :pswitch_data_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChromeBrowserProvider: delete - unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :pswitch_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeRemoveBookmark(JJ)I

    move-result v0

    .line 484
    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 454
    :pswitch_1
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 458
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 461
    :pswitch_3
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeSearchFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 465
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeSearchFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 468
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeHistoryFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 471
    :pswitch_6
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeHistoryFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 475
    :pswitch_7
    invoke-static {p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 478
    :pswitch_8
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->removeBookmarkFromAPI(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 1149
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$3;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1157
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 552
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureUriMatcherInitialized()V

    .line 553
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 554
    packed-switch v0, :pswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChromeBrowserProvider: getType - unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/bookmark"

    .line 568
    :goto_0
    return-object v0

    .line 560
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 562
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 564
    :pswitch_3
    const-string/jumbo v0, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 566
    :pswitch_4
    const-string/jumbo v0, "vnd.android.cursor.dir/browser-history"

    goto :goto_0

    .line 568
    :pswitch_5
    const-string/jumbo v0, "vnd.android.cursor.item/browser-history"

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 408
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->hasWriteAccess()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 436
    :goto_0
    return-object v0

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 413
    packed-switch v0, :pswitch_data_0

    .line 431
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChromeBrowserProvider: insert - unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->addBookmark(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 416
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 419
    :pswitch_2
    const-string/jumbo v0, "bookmark"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->addBookmarkFromAPI(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 424
    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 427
    :pswitch_4
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->addSearchTermFromAPI(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 428
    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 434
    :cond_2
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 435
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 246
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$1;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->addStartupCompletedObserver(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 262
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 263
    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 346
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->hasReadAccess()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->BOOKMARK_DEFAULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContentUriId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 354
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 356
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 358
    packed-switch v0, :pswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChromeBrowserProvider: query - unknown URL uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, p5, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getBookmarkHistorySuggestions(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 398
    :goto_1
    if-nez v0, :cond_3

    .line 399
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v6, [Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 401
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 363
    :pswitch_1
    invoke-direct {p0, p3, p4, p5, v6}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getBookmarkHistorySuggestions(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 366
    :pswitch_2
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 369
    :pswitch_3
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 373
    :pswitch_4
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->querySearchTermFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 376
    :pswitch_5
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->querySearchTermFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 380
    :pswitch_6
    invoke-static {p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildHistoryWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 384
    :pswitch_7
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildHistoryWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 388
    :pswitch_8
    invoke-static {p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 392
    :pswitch_9
    invoke-static {v2, v3, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->queryBookmarkFromAPI([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->canHandleContentProviderApiCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->hasWriteAccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContentUriId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 494
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 496
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 498
    packed-switch v0, :pswitch_data_0

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChromeBrowserProvider: update - unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_0
    const/4 v6, 0x0

    .line 501
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 504
    :cond_2
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 505
    const-wide/16 v8, -0x1

    .line 506
    const-string/jumbo v0, "parentId"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    const-string/jumbo v0, "parentId"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 509
    :cond_3
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->nativeUpdateBookmark(JJLjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    .line 511
    invoke-direct {p0, v8, v9}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateLastModifiedBookmarkFolder(J)V

    .line 546
    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 514
    :pswitch_1
    invoke-static {v4, v5, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 518
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 521
    :pswitch_3
    invoke-static {v4, v5, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateSearchTermFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 525
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateSearchTermFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 528
    :pswitch_5
    invoke-static {p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildHistoryWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 532
    :pswitch_6
    invoke-static {v4, v5, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildHistoryWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 536
    :pswitch_7
    invoke-static {p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 540
    :pswitch_8
    invoke-static {v4, v5, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->buildBookmarkWhereClause(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->updateBookmarkFromAPI(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
