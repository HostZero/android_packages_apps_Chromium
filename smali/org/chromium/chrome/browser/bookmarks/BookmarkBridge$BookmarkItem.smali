.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
.super Ljava/lang/Object;
.source "BookmarkBridge.java"


# instance fields
.field private final mId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private final mIsEditable:Z

.field private final mIsFolder:Z

.field private final mIsManaged:Z

.field private final mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/components/bookmarks/BookmarkId;ZZ)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 177
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mTitle:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mUrl:Ljava/lang/String;

    .line 179
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mIsFolder:Z

    .line 180
    iput-object p5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 181
    iput-boolean p6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mIsEditable:Z

    .line 182
    iput-boolean p7, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mIsManaged:Z

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/components/bookmarks/BookmarkId;ZZLorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/components/bookmarks/BookmarkId;ZZ)V

    return-void
.end method


# virtual methods
.method public getId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method

.method public getParentId()Lorg/chromium/components/bookmarks/BookmarkId;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mIsEditable:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mIsFolder:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlEditable()Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
