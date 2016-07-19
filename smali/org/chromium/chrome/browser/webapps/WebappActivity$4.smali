.class Lorg/chromium/chrome/browser/webapps/WebappActivity$4;
.super Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;
.source "WebappActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createTopControlsVisibilityDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
    .locals 1

    .prologue
    .line 543
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappActivity$4$1;-><init>(Lorg/chromium/chrome/browser/webapps/WebappActivity$4;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method
