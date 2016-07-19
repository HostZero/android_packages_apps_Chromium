.class Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;
.super Ljava/lang/Object;
.source "ProgressAnimationSmooth.java"

# interfaces
.implements Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mProgress:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeAcceleratingDuration(FF)F
    .locals 4

    .prologue
    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return p2

    .line 92
    :cond_0
    const v0, -0x3f2aaaab

    iget v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    mul-float/2addr v0, v1

    const v1, 0x40d55555

    iget v2, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    const v2, 0x41b1c71c

    iget v3, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    .line 94
    const/4 v1, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    .line 31
    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    .line 32
    return-void
.end method

.method public updateProgress(FFI)F
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 36
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    cmpg-float v0, v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->computeAcceleratingDuration(FF)F

    move-result v1

    .line 40
    sub-float v2, p2, v1

    .line 42
    cmpl-float v0, v1, v6

    if-lez v0, :cond_1

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_0
    mul-float/2addr v0, v1

    .line 45
    iget v3, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    iget v4, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    mul-float v5, v7, v0

    add-float/2addr v4, v5

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    .line 46
    iget v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    .line 49
    :cond_1
    cmpl-float v0, v2, v6

    if-lez v0, :cond_2

    .line 50
    const v0, -0x41e66666    # -0.15f

    mul-float/2addr v0, v2

    .line 51
    iget v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    iget v3, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    mul-float v4, v7, v0

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    .line 52
    iget v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    .line 55
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    .line 56
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    sub-float v0, p1, v0

    int-to-float v1, p3

    div-float v1, v7, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 57
    iput p1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    .line 58
    iput v6, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mVelocity:F

    .line 61
    :cond_3
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationSmooth;->mProgress:F

    return v0

    .line 43
    :cond_4
    const v0, 0x3e19999a    # 0.15f

    goto :goto_0
.end method
