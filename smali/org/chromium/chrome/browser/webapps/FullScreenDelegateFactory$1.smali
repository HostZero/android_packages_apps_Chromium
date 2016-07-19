.class Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$1;
.super Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
.source "FullScreenDelegateFactory.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$1;->this$0:Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method


# virtual methods
.method public isHidingTopControlsEnabled()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory$1;->isShowingTopControlsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
