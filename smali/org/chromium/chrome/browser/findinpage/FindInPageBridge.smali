.class public Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
.super Ljava/lang/Object;
.source "FindInPageBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeFindInPageBridge:J

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 19
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeInit(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    .line 20
    return-void
.end method

.method private native nativeActivateFindInPageResultForAccessibility(J)V
.end method

.method private native nativeActivateNearestFindResult(JFF)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetPreviousFindText(J)Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeRequestFindMatchRects(JI)V
.end method

.method private native nativeStartFinding(JLjava/lang/String;ZZ)V
.end method

.method private native nativeStopFinding(JZ)V
.end method


# virtual methods
.method public activateFindInPageResultForAccessibility()V
    .locals 4

    .prologue
    .line 45
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeActivateFindInPageResultForAccessibility(J)V

    .line 47
    return-void
.end method

.method public activateNearestFindResult(FF)V
    .locals 4

    .prologue
    .line 75
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeActivateNearestFindResult(JFF)V

    .line 77
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeDestroy(J)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    .line 28
    return-void
.end method

.method public getPreviousFindText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeGetPreviousFindText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFindMatchRects(I)V
    .locals 4

    .prologue
    .line 66
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeRequestFindMatchRects(JI)V

    .line 68
    return-void
.end method

.method public startFinding(Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    .line 36
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeStartFinding(JLjava/lang/String;ZZ)V

    .line 38
    return-void
.end method

.method public stopFinding(Z)V
    .locals 4

    .prologue
    .line 54
    sget-boolean v0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->nativeStopFinding(JZ)V

    .line 56
    return-void
.end method
