.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$000(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 160
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->start()V

    .line 161
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$200(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$300(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$300(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
    invoke-static {v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$500(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getTop()I

    move-result v1

    # setter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$402(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;I)I

    .line 170
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->reset()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
