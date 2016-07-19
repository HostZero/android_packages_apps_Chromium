.class Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback$1;
.super Ljava/lang/Object;
.source "AbstractMediaRouteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback$1;->this$1:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback$1;->this$1:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->release()V

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback$1;->this$1:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->access$402(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;Z)Z

    .line 107
    return-void
.end method
