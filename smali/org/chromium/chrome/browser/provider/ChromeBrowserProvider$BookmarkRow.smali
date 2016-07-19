.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"


# instance fields
.field mCreated:Ljava/lang/Long;

.field mDate:Ljava/lang/Long;

.field mFavicon:[B

.field mIsBookmark:Ljava/lang/Boolean;

.field mParentId:J

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mVisits:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    new-instance v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;-><init>()V

    .line 1086
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mUrl:Ljava/lang/String;

    .line 1089
    :cond_0
    const-string/jumbo v0, "bookmark"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    const-string/jumbo v0, "bookmark"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mIsBookmark:Ljava/lang/Boolean;

    .line 1092
    :cond_1
    const-string/jumbo v0, "created"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    const-string/jumbo v0, "created"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mCreated:Ljava/lang/Long;

    .line 1095
    :cond_2
    const-string/jumbo v0, "date"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    const-string/jumbo v0, "date"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mDate:Ljava/lang/Long;

    .line 1098
    :cond_3
    const-string/jumbo v0, "favicon"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1099
    const-string/jumbo v0, "favicon"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mFavicon:[B

    .line 1101
    iget-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mFavicon:[B

    if-nez v0, :cond_4

    .line 1102
    new-array v0, v1, [B

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mFavicon:[B

    .line 1105
    :cond_4
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1106
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mTitle:Ljava/lang/String;

    .line 1108
    :cond_5
    const-string/jumbo v0, "visits"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1109
    const-string/jumbo v0, "visits"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mVisits:Ljava/lang/Integer;

    .line 1111
    :cond_6
    const-string/jumbo v0, "parentId"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1112
    const-string/jumbo v0, "parentId"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkRow;->mParentId:J

    .line 1114
    :cond_7
    return-object v2

    :cond_8
    move v0, v1

    .line 1090
    goto :goto_0
.end method
