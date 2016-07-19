.class Lorg/chromium/third_party/android/media/MediaController$1;
.super Landroid/support/customtabs/a;
.source "MediaController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/media/MediaController;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController$1;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    invoke-direct {p0}, Landroid/support/customtabs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayingChanged(Landroid/support/v4/media/f;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$1;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # invokes: Lorg/chromium/third_party/android/media/MediaController;->updatePausePlay()V
    invoke-static {v0}, Lorg/chromium/third_party/android/media/MediaController;->access$000(Lorg/chromium/third_party/android/media/MediaController;)V

    .line 69
    return-void
.end method
