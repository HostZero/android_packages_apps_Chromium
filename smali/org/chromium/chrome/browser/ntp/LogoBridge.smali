.class Lorg/chromium/chrome/browser/ntp/LogoBridge;
.super Ljava/lang/Object;
.source "LogoBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeLogoBridge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/chrome/browser/ntp/LogoBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->mNativeLogoBridge:J

    .line 89
    return-void
.end method

.method private static createGifImage([B)Ljp/tomorrowkey/android/gifplayer/BaseGifImage;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    invoke-direct {v0, p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;-><init>([B)V

    return-object v0
.end method

.method private static createLogo(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetAnimatedLogo(JLorg/chromium/chrome/browser/ntp/LogoBridge$AnimatedLogoCallback;Ljava/lang/String;)V
.end method

.method private native nativeGetCurrentLogo(JLorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method


# virtual methods
.method destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->mNativeLogoBridge:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->mNativeLogoBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->nativeDestroy(J)V

    .line 98
    iput-wide v2, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->mNativeLogoBridge:J

    .line 99
    return-void
.end method

.method getAnimatedLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$AnimatedLogoCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->mNativeLogoBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->nativeGetAnimatedLogo(JLorg/chromium/chrome/browser/ntp/LogoBridge$AnimatedLogoCallback;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method getCurrentLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge;->mNativeLogoBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->nativeGetCurrentLogo(JLorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V

    .line 110
    return-void
.end method
