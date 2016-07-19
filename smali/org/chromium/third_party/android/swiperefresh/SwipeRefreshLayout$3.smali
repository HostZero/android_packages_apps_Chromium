.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    # invokes: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$600(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V

    .line 412
    return-void
.end method
