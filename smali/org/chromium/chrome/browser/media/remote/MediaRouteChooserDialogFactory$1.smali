.class Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;
.super Landroid/support/v7/app/ai;
.source "MediaRouteChooserDialogFactory.java"


# instance fields
.field mCancelled:Z

.field final mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;

.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)V
    .locals 2

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;

    invoke-direct {p0}, Landroid/support/v7/app/ai;-><init>()V

    .line 67
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->mCancelled:Z

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/ai;->onCancel(Landroid/content/DialogInterface;)V

    .line 88
    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/ae;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->saveSystemVisibility(Landroid/app/Activity;)V

    .line 74
    new-instance v0, Landroid/support/v7/app/ae;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ae;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v7/app/ai;->onDismiss(Landroid/content/DialogInterface;)V

    .line 94
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;

    # getter for: Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->access$100(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;

    # getter for: Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->access$300(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;

    # getter for: Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mPlayer:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->access$200(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v2

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->c()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->onRouteSelected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v7/app/ai;->onStop()V

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->restoreSystemVisibility(Landroid/app/Activity;)V

    .line 81
    return-void
.end method
