.class Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;
.super Ljava/lang/Object;
.source "TtsPlatformImpl.java"


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->mName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->mLanguage:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/TtsPlatformImpl$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->mLanguage:Ljava/lang/String;

    return-object v0
.end method
