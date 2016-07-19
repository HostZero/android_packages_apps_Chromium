.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object v0

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->val$endingAlpha:I

    iget v3, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->val$startingAlpha:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 441
    return-void
.end method
