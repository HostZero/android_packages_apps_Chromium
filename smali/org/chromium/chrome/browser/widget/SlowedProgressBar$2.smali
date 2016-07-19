.class Lorg/chromium/chrome/browser/widget/SlowedProgressBar$2;
.super Ljava/lang/Object;
.source "SlowedProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/SlowedProgressBar;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/SlowedProgressBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar$2;->this$0:Lorg/chromium/chrome/browser/widget/SlowedProgressBar;

    # getter for: Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mTargetProgress:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->access$100(Lorg/chromium/chrome/browser/widget/SlowedProgressBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->setProgressInternal(I)V

    .line 37
    return-void
.end method
