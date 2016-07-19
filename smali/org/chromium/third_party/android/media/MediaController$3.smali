.class Lorg/chromium/third_party/android/media/MediaController$3;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/media/MediaController;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .prologue
    .line 298
    if-nez p3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # getter for: Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;
    invoke-static {v0}, Lorg/chromium/third_party/android/media/MediaController;->access$300(Lorg/chromium/third_party/android/media/MediaController;)Landroid/support/v4/media/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/f;->c()J

    move-result-wide v0

    .line 305
    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 306
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # getter for: Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;
    invoke-static {v2}, Lorg/chromium/third_party/android/media/MediaController;->access$300(Lorg/chromium/third_party/android/media/MediaController;)Landroid/support/v4/media/f;

    move-result-object v2

    long-to-int v3, v0

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/media/f;->a(J)V

    .line 307
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # getter for: Lorg/chromium/third_party/android/media/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/third_party/android/media/MediaController;->access$400(Lorg/chromium/third_party/android/media/MediaController;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # getter for: Lorg/chromium/third_party/android/media/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/third_party/android/media/MediaController;->access$400(Lorg/chromium/third_party/android/media/MediaController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    long-to-int v0, v0

    # invokes: Lorg/chromium/third_party/android/media/MediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lorg/chromium/third_party/android/media/MediaController;->access$500(Lorg/chromium/third_party/android/media/MediaController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/third_party/android/media/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/media/MediaController;->access$202(Lorg/chromium/third_party/android/media/MediaController;Z)Z

    .line 294
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/third_party/android/media/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/media/MediaController;->access$202(Lorg/chromium/third_party/android/media/MediaController;Z)Z

    .line 314
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/media/MediaController;->updateProgress()J

    .line 315
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController$3;->this$0:Lorg/chromium/third_party/android/media/MediaController;

    # invokes: Lorg/chromium/third_party/android/media/MediaController;->updatePausePlay()V
    invoke-static {v0}, Lorg/chromium/third_party/android/media/MediaController;->access$000(Lorg/chromium/third_party/android/media/MediaController;)V

    .line 316
    return-void
.end method
