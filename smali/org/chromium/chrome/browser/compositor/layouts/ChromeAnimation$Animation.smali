.class public abstract Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
.super Ljava/lang/Object;
.source "ChromeAnimation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mAnimatedObject:Ljava/lang/Object;

.field private mCurrentTime:J

.field private mDelayStartValue:Z

.field private mDuration:J

.field private mEnd:F

.field private mHasFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStart:F

.field private mStartDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;FFJJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getDecelerateInterpolator()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 255
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p4, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mAnimatedObject:Ljava/lang/Object;

    .line 257
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStart:F

    .line 258
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mEnd:F

    .line 259
    iput-wide p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDuration:J

    .line 260
    iput-wide p6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStartDelay:J

    .line 261
    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;FFJJLandroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;-><init>(Ljava/lang/Object;FFJJ)V

    .line 240
    iput-object p8, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 241
    return-void
.end method


# virtual methods
.method public checkProperty(Ljava/lang/Enum;)Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public finished()Z
    .locals 6

    .prologue
    .line 326
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mHasFinished:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDuration:J

    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStartDelay:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mHasFinished:Z

    .line 328
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->onPropertyAnimationFinished()V

    .line 331
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mHasFinished:Z

    return v0
.end method

.method protected getAnimatedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mAnimatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onPropertyAnimationFinished()V
.end method

.method public abstract setProperty(F)V
.end method

.method public setStartValueAfterStartDelay(Z)V
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDelayStartValue:Z

    .line 277
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mHasFinished:Z

    .line 318
    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    .line 319
    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->update(J)V

    .line 320
    return-void
.end method

.method public update(J)V
    .locals 9

    .prologue
    .line 296
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    .line 299
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDuration:J

    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStartDelay:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    .line 301
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDelayStartValue:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStartDelay:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStartDelay:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDuration:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 309
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStart:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mEnd:F

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStart:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    iget-wide v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDuration:J

    long-to-float v1, v6

    div-float/2addr v0, v1

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->setProperty(F)V

    goto :goto_0
.end method

.method public updateAndFinish()V
    .locals 4

    .prologue
    .line 284
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mDuration:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mStartDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mCurrentTime:J

    .line 285
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->mEnd:F

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->setProperty(F)V

    .line 286
    return-void
.end method
