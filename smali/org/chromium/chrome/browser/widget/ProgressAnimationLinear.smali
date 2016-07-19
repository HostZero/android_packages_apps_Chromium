.class Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;
.super Ljava/lang/Object;
.source "ProgressAnimationLinear.java"

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
    .line 10
    const-class v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->mProgress:F

    .line 20
    return-void
.end method

.method public updateProgress(FFI)F
    .locals 2

    .prologue
    .line 24
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->mProgress:F

    cmpg-float v0, v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->mProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->mProgress:F

    .line 28
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ProgressAnimationLinear;->mProgress:F

    return v0

    .line 26
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method
