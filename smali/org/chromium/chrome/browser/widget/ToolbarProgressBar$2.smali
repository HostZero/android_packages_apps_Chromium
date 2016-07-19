.class Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;
.super Ljava/lang/Object;
.source "ToolbarProgressBar.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$200(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgress:F
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$100(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)F

    move-result v2

    const-wide/16 v4, 0x32

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->getWidth()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;->updateProgress(FFI)F

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setProgress(F)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$301(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;F)V

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->getProgress()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgress:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$100(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mIsStarted:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$400(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHideRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$500(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHidingDelayMs:J
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$600(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mProgressAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$700(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 84
    :cond_1
    return-void
.end method
