.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;
.super Ljava/lang/Object;
.source "DefaultMediaRouteController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->release()V

    .line 317
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$600(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DefaultMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSessionStatus result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v2, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$700(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$5;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processSessionStatusBundle(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$800(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V

    .line 312
    return-void
.end method
