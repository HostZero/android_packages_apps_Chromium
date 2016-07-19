.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"


# instance fields
.field mDate:Ljava/lang/Long;

.field mTerm:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;
    .locals 2

    .prologue
    .line 1124
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;-><init>()V

    .line 1125
    const-string/jumbo v1, "search"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const-string/jumbo v1, "search"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mTerm:Ljava/lang/String;

    .line 1128
    :cond_0
    const-string/jumbo v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    const-string/jumbo v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$SearchRow;->mDate:Ljava/lang/Long;

    .line 1131
    :cond_1
    return-object v0
.end method
