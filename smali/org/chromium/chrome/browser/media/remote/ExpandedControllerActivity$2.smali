.class Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;
.super Ljava/lang/Object;
.source "ExpandedControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$100(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/third_party/android/media/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/third_party/android/media/MediaController;->updateProgress()J

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$200(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$200(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
