.class Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder$TopAlignedSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AnswerTextBuilder.java"


# instance fields
.field private mBaselineShift:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint$FontMetrics;F)V
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 279
    iget v0, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, p3, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v2, p3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 281
    int-to-float v1, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 282
    int-to-float v2, p2

    mul-float/2addr v0, v2

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 284
    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder$TopAlignedSpan;->mBaselineShift:I

    .line 285
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 289
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder$TopAlignedSpan;->mBaselineShift:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 290
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 294
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder$TopAlignedSpan;->mBaselineShift:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 295
    return-void
.end method
