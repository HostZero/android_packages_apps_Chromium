.class public Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;
.super Ljava/lang/Object;
.source "TitleBitmapFactory.java"


# instance fields
.field private mFaviconDimension:I

.field private final mMaxWidth:I

.field private final mNullFaviconResourceId:I

.field private final mTextHeight:F

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextYOffset:F

.field private final mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 9

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mNullFaviconResourceId:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    if-eqz p2, :cond_1

    sget v0, Lorg/chromium/chrome/R$color;->compositor_tab_title_bar_text_incognito:I

    :goto_0
    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    .line 56
    if-eqz p2, :cond_2

    sget v0, Lorg/chromium/chrome/R$color;->compositor_tab_title_bar_shadow_incognito:I

    :goto_1
    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    .line 59
    if-eqz p2, :cond_3

    sget v0, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_bar_shadow_x_offset_incognito:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 62
    if-eqz p2, :cond_4

    sget v0, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_bar_shadow_y_offset_incognito:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 65
    sget v5, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_text_size:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v5, v6

    .line 68
    sget v6, Lorg/chromium/chrome/R$bool;->compositor_tab_title_fake_bold_text:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 70
    new-instance v7, Landroid/text/TextPaint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    .line 71
    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 72
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 73
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    const v7, 0x3a83126f    # 0.001f

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {v2, v7, v4, v0, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 80
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextHeight:F

    .line 81
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextYOffset:F

    .line 83
    sget v0, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_favicon_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    .line 84
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    int-to-float v0, v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextHeight:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mViewHeight:I

    .line 86
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mMaxWidth:I

    .line 91
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mMaxWidth:I

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    .line 92
    return-void

    .line 53
    :cond_1
    sget v0, Lorg/chromium/chrome/R$color;->compositor_tab_title_bar_text:I

    goto/16 :goto_0

    .line 56
    :cond_2
    sget v0, Lorg/chromium/chrome/R$color;->compositor_tab_title_bar_shadow:I

    goto/16 :goto_1

    .line 59
    :cond_3
    sget v0, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_bar_shadow_x_offset:I

    goto/16 :goto_2

    .line 62
    :cond_4
    sget v0, Lorg/chromium/chrome/R$dimen;->compositor_tab_title_bar_shadow_y_offset:I

    goto/16 :goto_3
.end method


# virtual methods
.method public getFaviconBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 103
    :try_start_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    if-nez p2, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mNullFaviconResourceId:I

    invoke-static {v0, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 110
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mFaviconDimension:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    const-string/jumbo v0, "TitleBitmapFactory"

    const-string/jumbo v1, "OutOfMemoryError while building favicon texture."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v2

    .line 124
    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    const-string/jumbo v0, "TitleBitmapFactory"

    const-string/jumbo v1, "InflateException while building favicon texture."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getTitleBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 141
    :cond_0
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mViewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 143
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    if-eqz v1, :cond_1

    .line 145
    const/4 v2, 0x0

    const/16 v1, 0x3e8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mViewHeight:I

    int-to-float v1, v1

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextHeight:F

    sub-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextYOffset:F

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TitleBitmapFactory;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move-object v0, v7

    .line 155
    :goto_1
    return-object v0

    :cond_2
    move v1, v0

    .line 136
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    const-string/jumbo v0, "TitleBitmapFactory"

    const-string/jumbo v1, "OutOfMemoryError while building title texture."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    const-string/jumbo v0, "TitleBitmapFactory"

    const-string/jumbo v1, "InflateException while building title texture."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
