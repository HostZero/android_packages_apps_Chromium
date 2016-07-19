.class Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;
.super Ljava/lang/Object;
.source "TtsPlatformImpl.java"


# instance fields
.field mImpl:Lorg/chromium/chrome/browser/TtsPlatformImpl;

.field mLang:Ljava/lang/String;

.field mPitch:F

.field mRate:F

.field mText:Ljava/lang/String;

.field mUtteranceId:I

.field mVolume:F


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFF)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mImpl:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    .line 43
    iput p2, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mUtteranceId:I

    .line 44
    iput-object p3, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mText:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mLang:Ljava/lang/String;

    .line 46
    iput p5, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mRate:F

    .line 47
    iput p6, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mPitch:F

    .line 48
    iput p7, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mVolume:F

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFFLorg/chromium/chrome/browser/TtsPlatformImpl$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->speak()V

    return-void
.end method

.method private speak()V
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mImpl:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    iget v1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mUtteranceId:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mText:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mLang:Ljava/lang/String;

    iget v4, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mRate:F

    iget v5, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mPitch:F

    iget v6, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->mVolume:F

    # invokes: Lorg/chromium/chrome/browser/TtsPlatformImpl;->speak(ILjava/lang/String;Ljava/lang/String;FFF)Z
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->access$000(Lorg/chromium/chrome/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFF)Z

    .line 53
    return-void
.end method
