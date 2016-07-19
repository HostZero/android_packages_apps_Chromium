.class public Lorg/chromium/ui/resources/statics/StaticResource;
.super Ljava/lang/Object;
.source "StaticResource.java"

# interfaces
.implements Lorg/chromium/ui/resources/Resource;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapSize:Landroid/graphics/Rect;

.field private final mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/chromium/ui/resources/statics/NinePatchData;->create(Landroid/graphics/Bitmap;)Lorg/chromium/ui/resources/statics/NinePatchData;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method public static create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    if-gtz p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->decodeBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    if-nez v1, :cond_2

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->decodeDrawable(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    :cond_2
    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Lorg/chromium/ui/resources/statics/StaticResource;

    invoke-direct {v0, v1}, Lorg/chromium/ui/resources/statics/StaticResource;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static createOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 119
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, p3, :cond_2

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, p2, :cond_0

    .line 127
    :cond_2
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 128
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method private static decodeBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 84
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->createOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 85
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 86
    invoke-static {p0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 93
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {v3, v1, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    .line 96
    goto :goto_0
.end method

.method private static decodeDrawable(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 102
    :try_start_0
    invoke-static {p0, p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 104
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/statics/NinePatchData;->getAperture()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/statics/NinePatchData;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    goto :goto_0
.end method
