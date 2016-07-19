.class public Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;
.super Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
.source "ChromeAnimation.java"


# instance fields
.field private final mProperty:Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJLandroid/view/animation/Interpolator;)V
    .locals 9

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;-><init>(Ljava/lang/Object;FFJJLandroid/view/animation/Interpolator;)V

    .line 401
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->mProperty:Ljava/lang/Enum;

    .line 402
    return-void
.end method

.method public static addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V
    .locals 11

    .prologue
    .line 430
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZ)V

    .line 431
    return-void
.end method

.method public static addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZ)V
    .locals 13

    .prologue
    .line 451
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getDecelerateInterpolator()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-static/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 453
    return-void
.end method

.method public static addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V
    .locals 3

    .prologue
    .line 474
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-static/range {p1 .. p10}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    .line 477
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->add(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    goto :goto_0
.end method

.method public static createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
    .locals 14

    .prologue
    .line 497
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJLandroid/view/animation/Interpolator;)V

    .line 499
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->setStartValueAfterStartDelay(Z)V

    .line 500
    return-object v3
.end method


# virtual methods
.method public checkProperty(Ljava/lang/Enum;)Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->mProperty:Ljava/lang/Enum;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPropertyAnimationFinished()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->mAnimatedObject:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->mProperty:Ljava/lang/Enum;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;->onPropertyAnimationFinished(Ljava/lang/Enum;)V

    .line 412
    return-void
.end method

.method public setProperty(F)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->mAnimatedObject:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->mProperty:Ljava/lang/Enum;

    invoke-interface {v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;->setProperty(Ljava/lang/Enum;F)V

    .line 407
    return-void
.end method
