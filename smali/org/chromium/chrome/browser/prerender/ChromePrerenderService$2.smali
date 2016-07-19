.class Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$2;
.super Ljava/lang/Object;
.source "ChromePrerenderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$2;->this$0:Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WarmupManager;->cancelCurrentPrerender()V

    .line 136
    return-void
.end method
