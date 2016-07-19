.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

.field final synthetic val$mSnapScrollRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->val$mSnapScrollRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 487
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return v4

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->val$mSnapScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 492
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$502(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z

    .line 493
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->val$mSnapScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$502(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z

    goto :goto_0
.end method
