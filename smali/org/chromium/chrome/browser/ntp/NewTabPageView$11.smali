.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

.field final synthetic val$mSnapScrollRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->val$mSnapScrollRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$500(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->val$mSnapScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 478
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->val$mSnapScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateSearchBoxOnScroll()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$800(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    .line 481
    return-void
.end method
