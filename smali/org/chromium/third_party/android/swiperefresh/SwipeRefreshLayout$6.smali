.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 742
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1000(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result v0

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget v1, v1, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 747
    :goto_0
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget v1, v1, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget v2, v2, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 748
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
    invoke-static {v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$500(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 749
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x0

    # invokes: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V
    invoke-static {v1, v0, v2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1200(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;IZ)V

    .line 750
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setArrowScale(F)V

    .line 751
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$1100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method
