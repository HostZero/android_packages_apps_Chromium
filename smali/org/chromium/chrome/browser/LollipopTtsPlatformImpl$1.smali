.class Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "LollipopTtsPlatformImpl.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;->this$0:Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;->this$0:Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;->sendEndEventOnUiThread(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;->this$0:Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;->sendErrorEventOnUiThread(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl$1;->this$0:Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;->sendStartEventOnUiThread(Ljava/lang/String;)V

    .line 47
    return-void
.end method
