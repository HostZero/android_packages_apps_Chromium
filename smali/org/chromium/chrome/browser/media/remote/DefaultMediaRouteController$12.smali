.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;
.super Landroid/support/v7/media/i;
.source "DefaultMediaRouteController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

.field final synthetic val$bundleHandler:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$bundleHandler:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;

    iput-object p3, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/support/v7/media/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 747
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$600(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    const-string/jumbo v1, "DefaultMediaRouteController"

    const-string/jumbo v2, "Error sending control request %s %s. Data: %s Error: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$intent:Landroid/content/Intent;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iget-object v6, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v5, v6}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$700(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v5, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$700(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    if-eqz p2, :cond_1

    .line 757
    const-string/jumbo v0, "com.google.android.gms.cast.EXTRA_ERROR_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 760
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->sendErrorToListeners(I)V

    .line 762
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$bundleHandler:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$bundleHandler:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 763
    :cond_2
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 742
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$bundleHandler:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$12;->val$bundleHandler:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;->onResult(Landroid/os/Bundle;)V

    .line 743
    :cond_0
    return-void
.end method
