.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;
.super Ljava/lang/Object;
.source "DefaultMediaRouteController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

.field final synthetic val$preferredTitle:Ljava/lang/String;

.field final synthetic val$startPositionMillis:J


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 256
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->val$preferredTitle:Ljava/lang/String;

    iput-wide p3, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->val$startPositionMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->release()V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castDefaultPlayerResult(Z)V

    .line 273
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->configureNewSession(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$100(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)V

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->val$preferredTitle:Ljava/lang/String;

    # setter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mPreferredTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$202(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->val$startPositionMillis:J

    # setter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStartPositionMillis:J
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$302(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;J)J

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$4;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mCurrentSessionId:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$400(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getSessionStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$500(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;)V

    .line 267
    return-void
.end method
