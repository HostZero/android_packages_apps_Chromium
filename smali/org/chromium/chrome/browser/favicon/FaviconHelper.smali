.class public Lorg/chromium/chrome/browser/favicon/FaviconHelper;
.super Ljava/lang/Object;
.source "FaviconHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FAVICON:I = 0x1

.field public static final INVALID_ICON:I = 0x0

.field public static final TOUCH_ICON:I = 0x2

.field public static final TOUCH_PRECOMPOSED_ICON:I = 0x4


# instance fields
.field private mNativeFaviconHelper:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    .line 63
    return-void
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnsureIconIsAvailable(JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V
.end method

.method private static native nativeGetDominantColorForBitmap(Landroid/graphics/Bitmap;)I
.end method

.method private static native nativeGetLocalFaviconImageForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z
.end method

.method private static native nativeGetSyncedFaviconImageForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeInit()J
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->nativeDestroy(J)V

    .line 71
    iput-wide v2, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    .line 72
    return-void
.end method

.method public ensureIconIsAvailable(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V
    .locals 8

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->nativeEnsureIconIsAvailable(JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V

    .line 121
    return-void
.end method

.method public getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z
    .locals 7

    .prologue
    .line 88
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    const/4 v4, 0x7

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->nativeGetLocalFaviconImageForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;IILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    move-result v0

    return v0
.end method

.method public getSyncedFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 113
    sget-boolean v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->mNativeFaviconHelper:J

    invoke-static {v0, v1, p1, p2}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->nativeGetSyncedFaviconImageForURL(JLorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
