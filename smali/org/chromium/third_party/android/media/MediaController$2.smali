.class Lorg/chromium/third_party/android/media/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/media/MediaController;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController$2;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$2;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # invokes: Lorg/chromium/third_party/android/media/MediaController;->doPauseResume()V
    invoke-static {v0}, Lorg/chromium/third_party/android/media/MediaController;->access$100(Lorg/chromium/third_party/android/media/MediaController;)V

    .line 256
    return-void
.end method
