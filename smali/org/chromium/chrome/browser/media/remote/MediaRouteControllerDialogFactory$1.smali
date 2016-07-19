.class Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;
.super Landroid/support/v7/app/ax;
.source "MediaRouteControllerDialogFactory.java"


# instance fields
.field final mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;

.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;)V
    .locals 2

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->this$0:Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;

    invoke-direct {p0}, Landroid/support/v7/app/ax;-><init>()V

    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->saveSystemVisibility(Landroid/app/Activity;)V

    .line 57
    new-instance v0, Landroid/support/v7/app/aj;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/aj;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v7/app/ax;->onStop()V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->mVisibilitySaver:Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->restoreSystemVisibility(Landroid/app/Activity;)V

    .line 64
    return-void
.end method
