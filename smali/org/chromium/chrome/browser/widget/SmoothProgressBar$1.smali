.class Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;
.super Ljava/lang/Object;
.source "SmoothProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mTargetProgress:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->access$000(Lorg/chromium/chrome/browser/widget/SmoothProgressBar;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mIsAnimated:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->access$100(Lorg/chromium/chrome/browser/widget/SmoothProgressBar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mTargetProgress:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->access$000(Lorg/chromium/chrome/browser/widget/SmoothProgressBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->setProgressInternal(I)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mTargetProgress:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->access$000(Lorg/chromium/chrome/browser/widget/SmoothProgressBar;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->getProgress()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->setProgressInternal(I)V

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SmoothProgressBar;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
