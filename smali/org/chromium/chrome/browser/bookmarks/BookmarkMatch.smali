.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;
.super Ljava/lang/Object;
.source "BookmarkMatch.java"


# instance fields
.field private final mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private final mTitleMatchPositions:Ljava/util/List;

.field private final mUrlMatchPositions:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 34
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;->mTitleMatchPositions:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;->mUrlMatchPositions:Ljava/util/List;

    .line 36
    return-void
.end method

.method private static createBookmarkMatch(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/util/List;Ljava/util/List;)Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getBookmarkId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkMatch;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method
