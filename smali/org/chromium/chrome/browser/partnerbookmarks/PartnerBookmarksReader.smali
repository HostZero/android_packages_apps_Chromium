.class public Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;
.super Ljava/lang/Object;
.source "PartnerBookmarksReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final INVALID_BOOKMARK_ID:J = -0x1L

.field static final ROOT_FOLDER_ID:J

.field private static sForceDisableEditing:Z

.field private static sInitialized:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mNativePartnerBookmarksReader:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->$assertionsDisabled:Z

    .line 22
    sput-boolean v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->sInitialized:Z

    .line 23
    sput-boolean v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->sForceDisableEditing:Z

    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    .line 84
    invoke-static {}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->initializeAndDisableEditingIfNecessary()V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;Ljava/lang/String;Ljava/lang/String;ZJ[B[B)J
    .locals 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->onBookmarkPush(Ljava/lang/String;Ljava/lang/String;ZJ[B[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static disablePartnerBookmarksEditing()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->sForceDisableEditing:Z

    .line 255
    sget-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->sInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->nativeDisablePartnerBookmarksEditing()V

    .line 256
    :cond_0
    return-void
.end method

.method private static initializeAndDisableEditingIfNecessary()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->sInitialized:Z

    .line 260
    sget-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->sForceDisableEditing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->disablePartnerBookmarksEditing()V

    .line 261
    :cond_0
    return-void
.end method

.method private native nativeAddPartnerBookmark(JLjava/lang/String;Ljava/lang/String;ZJ[B[B)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeDisablePartnerBookmarksEditing()V
.end method

.method private native nativeInit()J
.end method

.method private native nativePartnerBookmarksCreationComplete(J)V
.end method

.method private native nativeReset(J)V
.end method

.method private onBookmarkPush(Ljava/lang/String;Ljava/lang/String;ZJ[B[B)J
    .locals 10

    .prologue
    .line 110
    iget-wide v1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->nativeAddPartnerBookmark(JLjava/lang/String;Ljava/lang/String;ZJ[B[B)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected getAvailableBookmarks()Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$BookmarkIterator;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;->createIfAvailable(Landroid/content/ContentResolver;)Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksProviderIterator;

    move-result-object v0

    return-object v0
.end method

.method protected onBookmarksRead()V
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->nativePartnerBookmarksCreationComplete(J)V

    .line 117
    iget-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->nativeDestroy(J)V

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    .line 119
    return-void
.end method

.method public readBookmarks()V
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->mNativePartnerBookmarksReader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 92
    sget-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "readBookmarks called after nativeDestroy."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 95
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;-><init>(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    :cond_1
    return-void
.end method
