.class Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;
.super Ljava/lang/Object;
.source "BookmarkDrawerListViewAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

.field final mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

.field final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    .line 59
    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 60
    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    const/4 v0, -0x4

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 74
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    .line 75
    return-void
.end method

.method constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    .line 94
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    if-nez v2, :cond_4

    .line 95
    iget-object v2, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 96
    :cond_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v3, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v2, v3}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_5
    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    iget v3, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_6
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    iget-object v3, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 85
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->hashCode()I

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->ordinal()I

    move-result v1

    goto :goto_1
.end method
