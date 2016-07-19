.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;
.super Ljava/lang/Object;
.source "StackViewAnimation.java"


# instance fields
.field private final mDpToPx:F

.field private final mWidthDp:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->mDpToPx:F

    .line 40
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->mWidthDp:F

    .line 41
    return-void
.end method

.method private createNewTabOpenedAnimator([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v6, 0x2

    .line 73
    invoke-interface {p3, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    if-eqz p1, :cond_3

    if-ltz p4, :cond_3

    array-length v0, p1

    if-ge p4, v0, :cond_3

    .line 89
    aget-object v0, p1, p4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setAlpha(F)V

    .line 93
    :cond_3
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 94
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 95
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 96
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 99
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    sget-object v0, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_FOLLOW_THROUGH_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->mDpToPx:F

    mul-float/2addr v0, v7

    .line 104
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 105
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->mWidthDp:F

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->mDpToPx:F

    mul-float/2addr v2, v4

    sub-float v0, v2, v0

    :cond_4
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    move-object v0, v1

    .line 106
    goto/16 :goto_0

    .line 93
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 95
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAnimatorForType(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    if-eqz p4, :cond_0

    .line 59
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->createNewTabOpenedAnimator([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
