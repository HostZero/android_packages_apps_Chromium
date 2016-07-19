.class Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;
.super Ljava/lang/Object;
.source "BookmarkBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;

.field private final mCallbackMethod:I

.field private final mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

.field private final mHandler:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 840
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 853
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mCallback:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;

    .line 854
    iput p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mCallbackMethod:I

    .line 855
    iput-object p4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mHandler:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 856
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$1;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->callCallbackMethod()V

    return-void
.end method

.method private callCallbackMethod()V
    .locals 3

    .prologue
    .line 862
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mCallbackMethod:I

    packed-switch v0, :pswitch_data_0

    .line 870
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 864
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mHandler:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mCallback:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->getBookmarksForFolder(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 867
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mHandler:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$DelayedBookmarkCallback;->mCallback:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->getCurrentFolderHierarchy(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;)V

    goto :goto_0

    .line 862
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
