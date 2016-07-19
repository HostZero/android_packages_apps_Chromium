.class public Lorg/chromium/components/bookmarks/BookmarkId;
.super Ljava/lang/Object;
.source "BookmarkId.java"


# static fields
.field public static final INVALID_FOLDER_ID:I = -0x2

.field public static final ROOT_FOLDER_ID:I = -0x1


# instance fields
.field private final mId:J

.field private final mType:I


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mId:J

    .line 27
    iput p3, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mType:I

    .line 28
    return-void
.end method

.method private static createBookmarkId(JI)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    return-object v0
.end method

.method public static getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    .line 57
    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v2, v0, v1, v3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    move-object v0, v2

    .line 70
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 61
    invoke-static {v2}, Lorg/chromium/components/bookmarks/BookmarkId;->isValidBookmarkTypeFromChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-static {v2}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkTypeFromChar(C)I

    move-result v2

    .line 63
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v3, v2

    .line 66
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 70
    :goto_1
    new-instance v2, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v2, v0, v1, v3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    move-object v0, v2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    const-string/jumbo v4, "BookmarkId"

    const-string/jumbo v5, "Error parsing url to extract the bookmark folder id."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getBookmarkTypeFromChar(C)I
    .locals 1

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 39
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
    .end packed-switch
.end method

.method private getBookmarkTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 105
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    const-string/jumbo v0, "p"

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidBookmarkTypeFromChar(C)Z
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x70

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    instance-of v1, p1, Lorg/chromium/components/bookmarks/BookmarkId;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    check-cast p1, Lorg/chromium/components/bookmarks/BookmarkId;

    .line 118
    iget-wide v2, p1, Lorg/chromium/components/bookmarks/BookmarkId;->mId:J

    iget-wide v4, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p1, Lorg/chromium/components/bookmarks/BookmarkId;->mType:I

    iget v2, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mType:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/chromium/components/bookmarks/BookmarkId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/components/bookmarks/BookmarkId;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
