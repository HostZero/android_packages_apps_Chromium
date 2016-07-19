.class public Lorg/chromium/chrome/browser/widget/FadingShadowView;
.super Landroid/view/View;
.source "FadingShadowView.java"


# instance fields
.field private mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

.field private mPosition:I

.field private mStrength:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mStrength:F

    .line 25
    return-void
.end method


# virtual methods
.method public init(II)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/widget/FadingShadow;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/widget/FadingShadow;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

    .line 34
    iput p2, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mPosition:I

    .line 35
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/FadingShadowView;->postInvalidateOnAnimation()V

    .line 36
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

    iget v3, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mPosition:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/FadingShadowView;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadowView;->mStrength:F

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/FadingShadow;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;IFF)V

    .line 63
    :cond_0
    return-void
.end method
