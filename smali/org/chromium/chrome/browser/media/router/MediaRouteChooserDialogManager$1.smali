.class Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;
.super Landroid/support/v7/app/ai;
.source "MediaRouteChooserDialogManager.java"


# instance fields
.field final mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    invoke-direct {p0}, Landroid/support/v7/app/ai;-><init>()V

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->mCancelled:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->access$002(Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;Z)Z

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->delegate()Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;->onDialogCancelled()V

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/ai;->onCancel(Landroid/content/DialogInterface;)V

    .line 57
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/ai;->onDismiss(Landroid/content/DialogInterface;)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    # getter for: Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->mCancelled:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->access$000(Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->androidMediaRouter()Landroid/support/v7/media/MediaRouter;

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->c()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->delegate()Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;->onSinkSelected(Lorg/chromium/chrome/browser/media/router/cast/MediaSink;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->saveSystemVisibility(Landroid/app/Activity;)V

    .line 41
    invoke-super {p0}, Landroid/support/v7/app/ai;->onStart()V

    .line 42
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v7/app/ai;->onStop()V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->restoreSystemVisibility(Landroid/app/Activity;)V

    .line 48
    return-void
.end method
