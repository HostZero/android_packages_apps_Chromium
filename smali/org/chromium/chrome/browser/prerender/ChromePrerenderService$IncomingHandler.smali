.class Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$IncomingHandler;
.super Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;
.source "ChromePrerenderService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$IncomingHandler;->this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

    .line 66
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isLocalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;-><init>(Landroid/content/Context;I)V

    .line 68
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$IncomingHandler;->this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->handleMessage(Landroid/os/Message;)V

    .line 73
    return-void
.end method
