.class Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
.super Ljava/lang/Object;
.source "BookmarkUIState.java"


# static fields
.field static final STATE_ALL_BOOKMARKS:I = 0x2

.field static final STATE_FILTER:I = 0x4

.field static final STATE_FOLDER:I = 0x3

.field static final STATE_LOADING:I = 0x1

.field static final URI_PERSIST_QUERY_NAME:Ljava/lang/String; = "persist"


# instance fields
.field mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

.field mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

.field mShouldPersist:Z

.field mState:I

.field mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mShouldPersist:Z

    .line 128
    return-void
.end method

.method static createAllBookmarksState(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "chrome-native://bookmarks/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createStateFromUrl(Landroid/net/Uri;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    return-object v0
.end method

.method static createFilterState(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createFilterUrl(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createStateFromUrl(Landroid/net/Uri;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    return-object v0
.end method

.method static createFilterUrl(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;Z)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "chrome-native://bookmarks/filter/"

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->value:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createUrl(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static createFolderState(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createFolderUrl(Lorg/chromium/components/bookmarks/BookmarkId;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createStateFromUrl(Landroid/net/Uri;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    return-object v0
.end method

.method static createFolderUrl(Lorg/chromium/components/bookmarks/BookmarkId;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 101
    const-string/jumbo v0, "chrome-native://bookmarks/folder/"

    invoke-virtual {p0}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createUrl(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static createLoadingState()Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;-><init>()V

    .line 39
    const/4 v1, 0x1

    iput v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mShouldPersist:Z

    .line 41
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method static createStateFromUrl(Landroid/net/Uri;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 71
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;-><init>()V

    .line 72
    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    .line 73
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->shouldPersist(Landroid/net/Uri;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mShouldPersist:Z

    .line 76
    iget-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    const-string/jumbo v2, "chrome-native://bookmarks/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iput v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->isValid(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    iput v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    .line 94
    const-string/jumbo v1, "chrome-native://bookmarks/"

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    .line 97
    :cond_1
    return-object v0

    .line 78
    :cond_2
    iget-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    const-string/jumbo v2, "chrome-native://bookmarks/folder/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-static {v1}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 82
    const/4 v1, 0x3

    iput v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    const-string/jumbo v2, "chrome-native://bookmarks/filter/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const/4 v2, 0x4

    iput v2, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    .line 88
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    goto :goto_0
.end method

.method static createStateFromUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->createStateFromUrl(Landroid/net/Uri;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    move-result-object v0

    return-object v0
.end method

.method private static createUrl(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 115
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    if-nez p2, :cond_0

    .line 118
    const-string/jumbo v1, "persist"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static shouldPersist(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "persist"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    instance-of v1, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    check-cast p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    .line 139
    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    iget v2, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    add-int/2addr v0, v1

    return v0
.end method

.method isValid(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 160
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 149
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getRootFolderId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 153
    :cond_4
    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 154
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 155
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    sget-object v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-ne v1, v2, :cond_1

    .line 156
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method
