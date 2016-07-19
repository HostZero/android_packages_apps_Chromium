.class Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iput-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 376
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z
    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$000(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    # invokes: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->applyFinishTranslation(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    invoke-static {v0, p1, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$100(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    .line 423
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    # invokes: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F
    invoke-static {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$200(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F

    move-result v0

    .line 382
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    .line 383
    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 384
    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 386
    iget-object v4, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    # invokes: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    invoke-static {v4, p1, v5}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$300(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    .line 390
    cmpg-float v4, p1, v7

    if-gtz v4, :cond_1

    .line 394
    div-float v4, p1, v7

    .line 396
    sub-float v5, v8, v0

    # getter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 399
    iget-object v4, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v4, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 404
    :cond_1
    cmpl-float v2, p1, v7

    if-lez v2, :cond_2

    .line 408
    sub-float v0, v8, v0

    .line 409
    sub-float v2, p1, v7

    div-float/2addr v2, v7

    .line 411
    # getter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 413
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 416
    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 417
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 419
    const/high16 v0, 0x43580000    # 216.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44870000    # 1080.0f

    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    # getter for: Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->access$500(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 421
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v1, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setRotation(F)V

    goto :goto_0
.end method
