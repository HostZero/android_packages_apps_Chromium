.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$500(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v2

    .line 466
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getTop()I

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$700(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    .line 467
    if-lez v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 468
    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    move-result-object v3

    div-int/lit8 v4, v0, 0x2

    if-ge v2, v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, v1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->smoothScrollTo(II)V

    .line 470
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$502(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z

    goto :goto_0
.end method
