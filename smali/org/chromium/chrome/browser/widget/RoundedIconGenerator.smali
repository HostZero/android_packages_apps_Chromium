.class public Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
.super Ljava/lang/Object;
.source "RoundedIconGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundRect:Landroid/graphics/RectF;

.field private final mCornerRadiusPx:I

.field private final mIconHeightPx:I

.field private final mIconWidthPx:I

.field private final mTextHeight:F

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextYOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconWidthPx:I

    .line 77
    iput p2, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconHeightPx:I

    .line 78
    iput p3, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mCornerRadiusPx:I

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconWidthPx:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconHeightPx:I

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mBackgroundRect:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 91
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextHeight:F

    .line 92
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextYOffset:F

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 6

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p3

    mul-float/2addr v0, v2

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v3, p4

    mul-float/2addr v0, v3

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, p6

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v5, v0

    move-object v0, p0

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(IIIIF)V

    .line 63
    return-void
.end method

.method public static getIconTextForUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .line 190
    :cond_0
    :goto_0
    return-object p0

    .line 175
    :cond_1
    const-string/jumbo v0, "chrome://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "chrome-native://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_2
    const-string/jumbo p0, "chrome"

    goto :goto_0

    .line 182
    :cond_3
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    sget-object v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to parse the URL for generating an icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 109
    iget v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconWidthPx:I

    iget v1, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconHeightPx:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mCornerRadiusPx:I

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mCornerRadiusPx:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 117
    iget v4, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconWidthPx:I

    int-to-float v4, v4

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    iget v4, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mIconHeightPx:I

    int-to-float v4, v4

    iget v5, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextHeight:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextHeight:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextYOffset:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    return-object v0
.end method

.method public generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateIconForUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->getIconTextForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    return-void
.end method
