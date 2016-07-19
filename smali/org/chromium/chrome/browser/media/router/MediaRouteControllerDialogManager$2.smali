.class Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;
.super Landroid/support/v7/app/ax;
.source "MediaRouteControllerDialogManager.java"


# instance fields
.field final mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    invoke-direct {p0}, Landroid/support/v7/app/ax;-><init>()V

    .line 45
    new-instance v0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->delegate()Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;->onDialogCancelled()V

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->androidMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    # getter for: Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mCallback:Landroid/support/v7/media/g;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->access$100(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)Landroid/support/v7/media/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/app/ax;->onDismiss(Landroid/content/DialogInterface;)V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->saveSystemVisibility(Landroid/app/Activity;)V

    .line 50
    invoke-super {p0}, Landroid/support/v7/app/ax;->onStart()V

    .line 51
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v7/app/ax;->onStop()V

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->restoreSystemVisibility(Landroid/app/Activity;)V

    .line 57
    return-void
.end method
