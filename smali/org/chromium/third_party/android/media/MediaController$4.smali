.class Lorg/chromium/third_party/android/media/MediaController$4;
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
    .line 337
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController$4;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$4;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # getter for: Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;
    invoke-static {v0}, Lorg/chromium/third_party/android/media/MediaController;->access$300(Lorg/chromium/third_party/android/media/MediaController;)Landroid/support/v4/media/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/f;->d()J

    move-result-wide v0

    .line 341
    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    .line 342
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController$4;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # getter for: Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;
    invoke-static {v2}, Lorg/chromium/third_party/android/media/MediaController;->access$300(Lorg/chromium/third_party/android/media/MediaController;)Landroid/support/v4/media/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/media/f;->a(J)V

    .line 343
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$4;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/media/MediaController;->updateProgress()J

    .line 344
    return-void
.end method
