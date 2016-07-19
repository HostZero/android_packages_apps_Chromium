.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    # invokes: Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V
    invoke-static {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->access$600(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V

    .line 370
    return-void
.end method
