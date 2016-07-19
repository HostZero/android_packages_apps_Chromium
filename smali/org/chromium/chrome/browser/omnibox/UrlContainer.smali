.class public Lorg/chromium/chrome/browser/omnibox/UrlContainer;
.super Landroid/view/ViewGroup;
.source "UrlContainer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mLastShowRequestTime:J

.field private mShowTrailingText:Z

.field private mTrailingTextAnimator:Landroid/animation/Animator;

.field private mTrailingTextHiddenWhileFocused:Z

.field private mTrailingTextShownWhileFocused:Z

.field private mTrailingTextView:Landroid/widget/TextView;

.field private final mTriggerHideAnimationRunnable:Ljava/lang/Runnable;

.field private final mTriggerHideRunnable:Ljava/lang/Runnable;

.field private mUrlBarHasFocus:Z

.field private mUrlBarTextWidth:I

.field private mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

.field private mUseDarkColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer$1;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer$2;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideAnimationRunnable:Ljava/lang/Runnable;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUseDarkColors:Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->hideTrailingText()V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/omnibox/UrlContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private hideTrailingText()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setAccessibilityTextOverride(Ljava/lang/String;)V

    .line 267
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v0

    .line 270
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 271
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    sget-object v4, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    sget-object v4, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    aput v0, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 274
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 275
    sget-object v0, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer$4;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 285
    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    .line 286
    return-void
.end method

.method private static layoutChild(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 151
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 79
    sget v0, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    .line 80
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "url_bar is not defined as a child."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 82
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->trailing_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    .line 83
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "trailing_text is not defined as a child."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 85
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setClickable(Z)V

    .line 86
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    sub-int v0, p5, p3

    .line 136
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->layoutChild(Landroid/view/View;II)V

    .line 137
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v1}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->layoutChild(Landroid/view/View;II)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarTextWidth:I

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->layoutChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->measure(II)V

    .line 96
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarTextWidth:I

    .line 104
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarTextWidth:I

    sub-int/2addr v0, v2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/widget/TextView;->measure(II)V

    .line 107
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarTextWidth:I

    goto :goto_0

    .line 101
    :cond_1
    int-to-float v1, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarTextWidth:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextDirection(Landroid/view/View;I)V

    .line 131
    :goto_0
    return-void

    .line 118
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextDirection(Landroid/view/View;I)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextDirection(Landroid/view/View;I)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextDirection(Landroid/view/View;I)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method onUrlFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarHasFocus:Z

    .line 295
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarHasFocus:Z

    if-eqz v0, :cond_5

    .line 296
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mShowTrailingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextShownWhileFocused:Z

    .line 298
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mShowTrailingText:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextHiddenWhileFocused:Z

    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    .line 307
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mShowTrailingText:Z

    .line 316
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 296
    goto :goto_0

    :cond_4
    move v2, v1

    .line 298
    goto :goto_1

    .line 309
    :cond_5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextShownWhileFocused:Z

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setTrailingTextVisible(Z)V

    .line 311
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextHiddenWhileFocused:Z

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setTrailingTextVisible(Z)V

    goto :goto_2
.end method

.method public setTrailingTextVisible(Z)V
    .locals 9

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarHasFocus:Z

    if-eqz v0, :cond_3

    .line 197
    if-eqz p1, :cond_1

    .line 198
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextShownWhileFocused:Z

    .line 199
    iput-boolean v6, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextHiddenWhileFocused:Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextShownWhileFocused:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_2
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextHiddenWhileFocused:Z

    goto :goto_0

    .line 206
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mLastShowRequestTime:J

    .line 208
    :cond_4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mShowTrailingText:Z

    if-eq p1, v0, :cond_0

    .line 209
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mShowTrailingText:Z

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    if-eqz p1, :cond_7

    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 225
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setAccessibilityTextOverride(Ljava/lang/String;)V

    .line 232
    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 233
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 237
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/UrlContainer$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer$3;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 218
    :cond_6
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v0

    .line 220
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 221
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    goto/16 :goto_1

    .line 250
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mLastShowRequestTime:J

    sub-long/2addr v0, v2

    .line 251
    cmp-long v2, v0, v4

    if-ltz v2, :cond_8

    .line 252
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->hideTrailingText()V

    goto/16 :goto_0

    .line 254
    :cond_8
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTriggerHideAnimationRunnable:Ljava/lang/Runnable;

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public setUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, p3, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 164
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->requestLayout()V

    .line 166
    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    .line 167
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    or-int/lit8 v0, v0, 0x1

    .line 171
    :cond_2
    return v0
.end method

.method public setUseDarkTextColors(Z)V
    .locals 3

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUseDarkColors:Z

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUrlBarView:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUseDarkColors:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUseDarkTextColors(Z)V

    .line 183
    sget v0, Lorg/chromium/chrome/R$color;->url_emphasis_non_emphasized_text:I

    .line 184
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mUseDarkColors:Z

    if-nez v1, :cond_0

    .line 185
    sget v0, Lorg/chromium/chrome/R$color;->url_emphasis_light_non_emphasized_text:I

    .line 187
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    return-void
.end method
