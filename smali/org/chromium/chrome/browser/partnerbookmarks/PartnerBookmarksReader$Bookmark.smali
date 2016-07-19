.class Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;
.super Ljava/lang/Object;
.source "PartnerBookmarksReader.java"


# instance fields
.field mEntries:Ljava/util/ArrayList;

.field mFavicon:[B

.field mId:J

.field mIsFolder:Z

.field mNativeId:J

.field mParent:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

.field mParentId:J

.field mTitle:Ljava/lang/String;

.field mTouchicon:[B

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mNativeId:J

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mEntries:Ljava/util/ArrayList;

    return-void
.end method
