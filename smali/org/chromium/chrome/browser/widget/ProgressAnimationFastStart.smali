.class Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;
.super Ljava/lang/Object;
.source "ProgressAnimationFastStart.java"

# interfaces
.implements Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$AnimationLogic;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    .line 21
    return-void
.end method

.method public updateProgress(FFI)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    cmpg-float v0, v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    cmpl-float v0, p1, v4

    if-nez v0, :cond_2

    .line 29
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    .line 35
    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    add-float/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    .line 36
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    sub-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    int-to-float v2, p3

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput p1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    .line 38
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    return v0

    .line 31
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationFastStart;->mProgress:F

    sub-float v0, p1, v0

    neg-float v1, p2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method
