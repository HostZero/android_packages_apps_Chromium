.class Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iput-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 443
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 444
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 445
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$000(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    # setter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z
    invoke-static {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$002(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Z)Z

    .line 449
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 450
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$500(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    # setter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$502(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$502(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;F)F

    .line 433
    return-void
.end method
