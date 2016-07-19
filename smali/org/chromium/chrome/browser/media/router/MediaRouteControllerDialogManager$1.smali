.class Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$1;
.super Landroid/support/v7/media/g;
.source "MediaRouteControllerDialogManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->delegate()Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$1;->this$0:Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    # getter for: Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mMediaRouteId:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->access$000(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;->onRouteClosed(Ljava/lang/String;)V

    .line 30
    return-void
.end method
