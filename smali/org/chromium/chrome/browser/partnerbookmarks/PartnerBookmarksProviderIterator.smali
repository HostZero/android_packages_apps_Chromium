.class public Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;
.super Ljava/lang/Object;
.source "PartnerBookmarksProviderIterator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$BookmarkIterator;


# static fields
.field private static final BOOKMARKS_CONTENT_URI:Landroid/net/Uri;

.field private static final BOOKMARKS_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.android.partnerbookmarks"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 26
    sput-object v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bookmarks"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->BOOKMARKS_CONTENT_URI:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "parent"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "touchicon"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->BOOKMARKS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    .line 71
    return-void
.end method

.method public static createIfAvailable(Landroid/content/ContentResolver;)Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 63
    sget-object v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->BOOKMARKS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->BOOKMARKS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "type DESC, _id ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;

    invoke-direct {v3, v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;-><init>(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 82
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->next()Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 99
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;-><init>()V

    .line 101
    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    .line 103
    iget-wide v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 104
    const-string/jumbo v1, "PartnerBookmarksProviderIterator"

    const-string/jumbo v2, "Dropping the bookmark: reserved _id was used"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-object v0

    .line 108
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "parent"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    .line 110
    iget-wide v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 111
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    .line 113
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mIsFolder:Z

    .line 116
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "url"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mUrl:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "favicon"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mFavicon:[B

    .line 121
    iget-object v2, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "touchicon"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTouchicon:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-boolean v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mIsFolder:Z

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 129
    :cond_5
    const-string/jumbo v1, "PartnerBookmarksProviderIterator"

    const-string/jumbo v2, "Dropping the bookmark: no title, or no url on a non-foler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    const-string/jumbo v2, "PartnerBookmarksProviderIterator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Dropping the bookmark: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 133
    goto/16 :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
