.class Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;
.super Lorg/chromium/chrome/browser/TtsPlatformImpl;
.source "LollipopTtsPlatformImpl.java"


# direct methods
.method protected constructor <init>(JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/TtsPlatformImpl;-><init>(JLandroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected addOnUtteranceProgressListener()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;-><init>(Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 49
    return-void
.end method

.method protected callSpeak(Ljava/lang/String;FI)I
    .locals 6

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    float-to-double v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
