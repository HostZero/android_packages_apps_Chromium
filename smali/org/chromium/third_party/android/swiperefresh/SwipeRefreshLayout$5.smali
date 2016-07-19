.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;
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
    .line 662
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$700(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$800(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    # invokes: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$900(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    .line 673
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 666
    return-void
.end method
