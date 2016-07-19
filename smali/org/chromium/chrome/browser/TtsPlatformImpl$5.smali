.class Lorg/chromium/chrome/browser/TtsPlatformImpl$5;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TtsPlatformImpl.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$5;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$5;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->sendEndEventOnUiThread(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$5;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->sendErrorEventOnUiThread(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$5;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->sendStartEventOnUiThread(Ljava/lang/String;)V

    .line 262
    return-void
.end method
