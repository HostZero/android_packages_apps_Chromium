.class public Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;
.super Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;
.source "ToolbarProgressBar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAlphaAnimationDurationMs:J

.field private mAnimationInitialized:Z

.field private mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mHidingDelayMs:J

.field private mIsStarted:Z

.field private final mProgressAnimator:Landroid/animation/TimeAnimator;

.field private mTargetProgress:F

.field private mTargetProgressUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-wide/16 v0, 0x8c

    iput-wide v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAlphaAnimationDurationMs:J

    .line 52
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHidingDelayMs:J

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$1;-><init>(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHideRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mProgressAnimator:Landroid/animation/TimeAnimator;

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mProgressAnimator:Landroid/animation/TimeAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$2;-><init>(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setAlpha(F)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;F)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->animateAlphaTo(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgress:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    return-object v0
.end method

.method static synthetic access$301(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;F)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setProgress(F)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHidingDelayMs:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)Landroid/animation/TimeAnimator;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mProgressAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method private animateAlphaTo(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->getAlpha()F

    move-result v0

    sub-float v0, p1, v0

    .line 181
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAlphaAnimationDurationMs:J

    long-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    sget-object v0, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 188
    :cond_0
    return-void

    .line 182
    :cond_1
    sget-object v0, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    goto :goto_0
.end method

.method private updateVisibleProgress()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    if-nez v0, :cond_1

    .line 192
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgress:F

    invoke-super {p0, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setProgress(F)V

    .line 193
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHideRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHidingDelayMs:J

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mProgressAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mProgressAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public finish(Z)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mIsStarted:Z

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->updateVisibleProgress()V

    .line 149
    const-string/jumbo v0, "Omnibox.ProgressBarUpdateCount"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->getProgressUpdateCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount1000Histogram(Ljava/lang/String;I)V

    .line 151
    const-string/jumbo v0, "Omnibox.ProgressBarBreakPointUpdateCount"

    iget v1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgressUpdateCount:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setAlpha(F)V

    goto :goto_0
.end method

.method public initializeAnimation()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationInitialized:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationInitialized:Z

    .line 107
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_2
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "progress-bar-animation"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    const-string/jumbo v0, "ProgressBarAnimationAndroid"

    const-string/jumbo v1, "progress-bar-animation"

    invoke-static {v0, v1}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_3
    const-string/jumbo v1, "smooth"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v1, "fast-start"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    goto :goto_0

    .line 120
    :cond_5
    const-string/jumbo v1, "linear"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    new-instance v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    goto :goto_0

    .line 123
    :cond_6
    sget-boolean v1, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setAlphaAnimationDuration(J)V
    .locals 1

    .prologue
    .line 167
    iput-wide p1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAlphaAnimationDurationMs:J

    .line 168
    return-void
.end method

.method public setHidingDelay(J)V
    .locals 1

    .prologue
    .line 176
    iput-wide p1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHidingDelayMs:J

    .line 177
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mIsStarted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgressUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgressUpdateCount:I

    .line 207
    iput p1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgress:F

    .line 208
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->updateVisibleProgress()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mIsStarted:Z

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mTargetProgressUpdateCount:I

    .line 133
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->resetProgressUpdateCount()V

    .line 134
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setProgress(F)V

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mAnimationLogic:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;->reset()V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->animateAlphaTo(F)V

    .line 138
    return-void
.end method
