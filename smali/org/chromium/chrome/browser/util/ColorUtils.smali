.class public Lorg/chromium/chrome/browser/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getColorWithOverlay(IIF)I
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 81
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v1, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float v2, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float v3, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private static getContrastForColor(I)F
    .locals 12

    .prologue
    const v11, 0x414eb852    # 12.92f

    const v10, 0x3f870a3d    # 1.055f

    const v9, 0x3d6147ae    # 0.055f

    const v8, 0x3d20e411    # 0.03928f

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v2, v3

    .line 44
    cmpg-float v2, v0, v8

    if-gez v2, :cond_0

    div-float/2addr v0, v11

    move v2, v0

    .line 45
    :goto_0
    cmpg-float v0, v1, v8

    if-gez v0, :cond_1

    div-float v0, v1, v11

    move v1, v0

    .line 46
    :goto_1
    cmpg-float v0, v3, v8

    if-gez v0, :cond_2

    div-float v0, v3, v11

    .line 47
    :goto_2
    const v3, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v2, v3

    const v3, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 48
    const v1, 0x3f866666    # 1.05f

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v2

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 44
    :cond_0
    add-float/2addr v0, v9

    div-float/2addr v0, v10

    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    move v2, v0

    goto :goto_0

    .line 45
    :cond_1
    add-float v0, v1, v9

    div-float/2addr v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v0

    goto :goto_1

    .line 46
    :cond_2
    add-float v0, v3, v9

    div-float/2addr v0, v10

    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_2
.end method

.method public static getDarkenedColorForStatusBar(I)I
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 97
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 98
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 99
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getLightProgressbarBackground(I)I
    .locals 2

    .prologue
    .line 77
    const/4 v0, -0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p0, v1}, Lorg/chromium/chrome/browser/util/ColorUtils;->getColorWithOverlay(IIF)I

    move-result v0

    return v0
.end method

.method private static getLightnessForColor(I)F
    .locals 4

    .prologue
    .line 28
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 34
    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getOpaqueColor(I)I
    .locals 3

    .prologue
    .line 128
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static getTextBoxAlphaForToolbarBackground(Lorg/chromium/chrome/browser/tab/Tab;)F
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Lorg/chromium/chrome/browser/util/ColorUtils;->shouldUseOpaqueTextboxBackground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method public static getTextBoxColorForToolbarBackground(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/ColorUtils;->shouldUseOpaqueTextboxBackground(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return v0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p0, v1}, Lorg/chromium/chrome/browser/util/ColorUtils;->getColorWithOverlay(IIF)I

    move-result v0

    goto :goto_0
.end method

.method public static shoudUseLightForegroundOnBackground(I)Z
    .locals 2

    .prologue
    .line 109
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/ColorUtils;->getContrastForColor(I)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseOpaqueTextboxBackground(I)Z
    .locals 2

    .prologue
    .line 119
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/ColorUtils;->getLightnessForColor(I)F

    move-result v0

    const v1, 0x3f51eb85    # 0.82f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
