.class public Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;
.super Ljava/lang/Object;
.source "FullscreenInfoBarDelegate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

.field private final mIsForIncognitoTab:Z

.field private mNativeFullscreenInfoBarDelegate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mNativeFullscreenInfoBarDelegate:J

    .line 32
    sget-boolean v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    .line 34
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mIsForIncognitoTab:Z

    .line 35
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->nativeLaunchFullscreenInfoBar(Lorg/chromium/chrome/browser/tab/Tab;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mNativeFullscreenInfoBarDelegate:J

    .line 36
    return-void
.end method

.method public static create(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;-><init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method private native nativeCloseFullscreenInfoBar(J)V
.end method

.method private native nativeLaunchFullscreenInfoBar(Lorg/chromium/chrome/browser/tab/Tab;)J
.end method

.method private onFullscreenAllowed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mIsForIncognitoTab:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 56
    return-void
.end method

.method private onFullscreenCancelled()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->setPersistentFullscreenMode(Z)V

    .line 64
    return-void
.end method

.method private onInfoBarDismissed()V
    .locals 2

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mNativeFullscreenInfoBarDelegate:J

    .line 72
    return-void
.end method


# virtual methods
.method protected closeFullscreenInfoBar()V
    .locals 4

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mNativeFullscreenInfoBarDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 43
    iget-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->mNativeFullscreenInfoBarDelegate:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->nativeCloseFullscreenInfoBar(J)V

    .line 45
    :cond_0
    return-void
.end method
