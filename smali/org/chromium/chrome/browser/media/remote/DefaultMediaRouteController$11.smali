.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;
.super Landroid/content/BroadcastReceiver;
.source "DefaultMediaRouteController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$600(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    const-string/jumbo v1, "Got a broadcast intent from the MRP: "

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v0, v1, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$1200(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;Landroid/content/Intent;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$11;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processMediaStatusBundle(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V

    .line 565
    return-void
.end method
