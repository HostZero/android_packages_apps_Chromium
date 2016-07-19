.class Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;
.super Ljava/lang/Object;
.source "BookmarkFolderSelectActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TYPE_NEW_FOLDER:I = 0x0

.field public static final TYPE_NORMAL:I = 0x1


# instance fields
.field mDepth:I

.field mId:Lorg/chromium/components/bookmarks/BookmarkId;

.field mIsSelected:Z

.field mTitle:Ljava/lang/String;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;ILjava/lang/String;ZI)V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_0
    iput p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mDepth:I

    .line 252
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 253
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mTitle:Ljava/lang/String;

    .line 254
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mIsSelected:Z

    .line 255
    iput p5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    .line 256
    return-void
.end method
