.class public Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
.super Ljava/lang/Object;
.source "LargeIconBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFaviconCache:Landroid/util/LruCache;

.field private mNativeLargeIconBridge:J

.field private mProfile:Lorg/chromium/chrome/browser/profiles/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/favicon/LargeIconBridge;)Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mFaviconCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetLargeIconForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z
.end method

.method private static native nativeInit()J
.end method


# virtual methods
.method public createCache(I)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$1;-><init>(Lorg/chromium/chrome/browser/favicon/LargeIconBridge;I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mFaviconCache:Landroid/util/LruCache;

    .line 65
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->nativeDestroy(J)V

    .line 73
    iput-wide v2, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    .line 74
    return-void
.end method

.method public getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z
    .locals 6

    .prologue
    .line 91
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mFaviconCache:Landroid/util/LruCache;

    if-nez v0, :cond_2

    .line 95
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->nativeGetLargeIconForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 98
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mFaviconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 99
    if-eqz v0, :cond_3

    .line 100
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v1, v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;->onLargeIconAvailable(Landroid/graphics/Bitmap;I)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_3
    new-instance v5, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;

    invoke-direct {v5, p0, p1, p3}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;-><init>(Lorg/chromium/chrome/browser/favicon/LargeIconBridge;Ljava/lang/String;Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V

    .line 111
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mNativeLargeIconBridge:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->nativeGetLargeIconForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    move-result v0

    goto :goto_0
.end method
