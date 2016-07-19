.class Lorg/chromium/chrome/browser/widget/SlowedProgressBar$1;
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
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SlowedProgressBar;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mPendingInvalidation:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->access$002(Lorg/chromium/chrome/browser/widget/SlowedProgressBar;Z)Z

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/SlowedProgressBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->invalidate()V

    .line 30
    return-void
.end method
