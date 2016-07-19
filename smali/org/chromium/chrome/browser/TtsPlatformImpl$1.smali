.class Lorg/chromium/chrome/browser/TtsPlatformImpl$1;
.super Ljava/lang/Object;
.source "TtsPlatformImpl.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$1;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$1$1;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl$1;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method
