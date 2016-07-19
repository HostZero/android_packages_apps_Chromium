.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1400(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result v0

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F
    invoke-static {v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1400(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 781
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # invokes: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V
    invoke-static {v1, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$600(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V

    .line 782
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # invokes: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->moveToStart(F)V
    invoke-static {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1300(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V

    .line 783
    return-void
.end method
