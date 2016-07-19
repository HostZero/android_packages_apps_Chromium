.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;
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
    .line 338
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->release()V

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castDefaultPlayerResult(Z)V

    .line 350
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    const-string/jumbo v1, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentItemId:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$902(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$6;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->processMediaStatusBundle(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V

    .line 343
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castDefaultPlayerResult(Z)V

    .line 344
    return-void
.end method
