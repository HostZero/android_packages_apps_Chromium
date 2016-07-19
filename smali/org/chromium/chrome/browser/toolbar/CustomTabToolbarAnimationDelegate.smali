.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;
.super Ljava/lang/Object;
.source "CustomTabToolbarAnimationDelegate.java"


# instance fields
.field private final mSecurityButton:Landroid/view/View;

.field private final mSecurityButtonHideAnimator:Landroid/animation/AnimatorSet;

.field private final mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

.field private mShouldRunTitleAnimation:Z

.field private mTitleBar:Landroid/widget/TextView;

.field private mUrlBar:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;

    .line 50
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->location_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 53
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, v0

    aput v4, v2, v3

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 55
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 58
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 59
    new-instance v3, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;

    invoke-direct {v3, p0, p2}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    sget-object v3, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 69
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 71
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonHideAnimator:Landroid/animation/AnimatorSet;

    .line 72
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 73
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 76
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v3, v4

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 78
    sget-object v2, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 80
    new-instance v2, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;

    invoke-direct {v2, p0, p2}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mTitleBar:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method hideSecurityButton()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonHideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method prepareTitleAnim(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mTitleBar:Landroid/widget/TextView;

    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mShouldRunTitleAnimation:Z

    .line 103
    return-void
.end method

.method setTitleAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mShouldRunTitleAnimation:Z

    .line 95
    return-void
.end method

.method showSecurityButton()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method startTitleAnimation(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mShouldRunTitleAnimation:Z

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mShouldRunTitleAnimation:Z

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mTitleBar:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->custom_tabs_url_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 118
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 119
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 121
    div-float v0, v1, v0

    .line 124
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 125
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 127
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 128
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;

    new-instance v3, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;

    invoke-direct {v3, p0, v0, v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;F[I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
