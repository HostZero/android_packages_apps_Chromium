.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;
.super Landroid/content/BroadcastReceiver;
.source "DefaultMediaRouteController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$600(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    const-string/jumbo v1, "Got a session broadcast intent from the MRP: "

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->dumpIntentToLog(Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v0, v1, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$1200(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;Landroid/content/Intent;)V

    .line 539
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 542
    if-nez v0, :cond_2

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$400(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$400(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$10;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processSessionStatusBundle(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$800(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V

    goto :goto_0
.end method
