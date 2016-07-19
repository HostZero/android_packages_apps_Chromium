.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;
.super Ljava/lang/Object;
.source "StackScroller.java"


# static fields
.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private final mFlywheel:Z

.field private mMode:I

.field private final mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

.field private final mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mFlywheel:Z

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    .line 38
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->initContants()V

    .line 39
    return-void
.end method

.method private static initContants()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->sViscousFluidScale:F

    .line 45
    sput v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->sViscousFluidNormalize:F

    .line 46
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->sViscousFluidNormalize:F

    .line 47
    return-void
.end method

.method private static viscousFluid(F)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 117
    sget v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->sViscousFluidScale:F

    mul-float/2addr v0, p0

    .line 118
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 119
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 125
    :goto_0
    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->sViscousFluidNormalize:F

    mul-float/2addr v0, v1

    .line 126
    return v0

    .line 122
    :cond_0
    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v4, v0

    .line 123
    const v1, 0x3ebc5ab2

    const v2, 0x3f21d2a7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->finish()V

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->finish()V

    .line 275
    return-void
.end method

.method public computeScrollOffset(J)Z
    .locals 7

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 138
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$300(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 144
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I

    move-result v2

    .line 145
    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 146
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 147
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->viscousFluid(F)F

    move-result v0

    .line 148
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->updateScroll(F)V

    .line 149
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->updateScroll(F)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->abortAnimation()V

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->update(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->continueWhenFinished(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->finish()V

    .line 164
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->update(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->continueWhenFinished(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->finish()V

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIIIIIJ)V
    .locals 9

    .prologue
    .line 250
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)F

    move-result v0

    .line 252
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)F

    move-result v1

    .line 253
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    int-to-float v2, p4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 255
    int-to-float v2, p3

    add-float/2addr v0, v2

    float-to-int p3, v0

    .line 256
    int-to-float v0, p4

    add-float/2addr v0, v1

    float-to-int p4, v0

    move v2, p3

    .line 260
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mMode:I

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    move v1, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    move-wide/from16 v6, p11

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->fling(IIIIIJ)V

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    move v1, p2

    move v2, p4

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    move-wide/from16 v6, p11

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->fling(IIIIIJ)V

    .line 263
    return-void

    :cond_0
    move v2, p3

    goto :goto_0
.end method

.method public final forceFinished(Z)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$002(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;Z)Z

    move-result v1

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$002(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;Z)Z

    .line 69
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFinalX(I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->setFinalPosition(I)V

    .line 114
    return-void
.end method

.method public springBack(IIIIIIJ)Z
    .locals 7

    .prologue
    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mMode:I

    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->springback(IIIJ)Z

    move-result v6

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    move v1, p2

    move v2, p5

    move v3, p6

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->springback(IIIJ)Z

    move-result v0

    .line 219
    if-nez v6, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScroll(IIIIJI)V
    .locals 7

    .prologue
    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mMode:I

    .line 196
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerX:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    move v2, p1

    move v3, p3

    move-wide v4, p5

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startScroll(IIJI)V

    .line 197
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->mScrollerY:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;

    move v2, p2

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startScroll(IIJI)V

    .line 198
    return-void
.end method
