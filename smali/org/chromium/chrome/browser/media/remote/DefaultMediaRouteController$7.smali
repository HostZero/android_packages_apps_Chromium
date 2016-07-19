.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;
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
    .line 388
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->release()V

    .line 398
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onSeekCompleted()V

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$7;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processMediaStatusBundle(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V

    .line 393
    return-void
.end method
