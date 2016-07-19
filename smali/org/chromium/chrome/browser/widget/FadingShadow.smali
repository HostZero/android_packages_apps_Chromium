.class public Lorg/chromium/chrome/browser/widget/FadingShadow;
.super Ljava/lang/Object;
.source "FadingShadow.java"


# static fields
.field public static final POSITION_BOTTOM:I = 0x1

.field public static final POSITION_TOP:I


# instance fields
.field private mShadowMatrix:Landroid/graphics/Matrix;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(I)V
    .locals 12

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v11, 0x8

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    .line 36
    new-array v6, v11, [F

    .line 37
    new-array v5, v11, [I

    .line 38
    const v0, 0xffffff

    and-int v2, p1, v0

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 42
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v11, :cond_0

    .line 43
    int-to-float v7, v0

    const/high16 v8, 0x40e00000    # 7.0f

    div-float/2addr v7, v8

    .line 45
    const v8, 0x400ccccd    # 2.2f

    mul-float/2addr v8, v7

    sub-float v8, v4, v8

    const v9, 0x3fe66666    # 1.8f

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    mul-float v10, v7, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 47
    aput v7, v6, v0

    .line 48
    int-to-float v7, v3

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v7, v2

    aput v7, v5, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowShader:Landroid/graphics/Shader;

    .line 53
    return-void
.end method


# virtual methods
.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;IFF)V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 68
    const/4 v0, 0x0

    invoke-static {v5, p5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, p4

    .line 69
    cmpg-float v1, v0, v5

    if-gez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int v3, v1, v2

    .line 74
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    .line 76
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 78
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    int-to-float v5, v1

    int-to-float v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowShader:Landroid/graphics/Shader;

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 80
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 81
    int-to-float v1, v1

    int-to-float v2, v4

    sub-float/2addr v2, v0

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 82
    :cond_2
    if-nez p3, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 84
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 85
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    int-to-float v5, v1

    int-to-float v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowShader:Landroid/graphics/Shader;

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 88
    int-to-float v1, v1

    int-to-float v2, v4

    int-to-float v3, v3

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/FadingShadow;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
