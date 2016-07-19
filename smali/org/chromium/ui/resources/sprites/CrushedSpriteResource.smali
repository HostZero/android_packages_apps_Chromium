.class public Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;
.super Ljava/lang/Object;
.source "CrushedSpriteResource.java"

# interfaces
.implements Lorg/chromium/ui/resources/Resource;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapSize:Landroid/graphics/Rect;

.field private mRectangles:[[I

.field private mScaledSpriteHeight:F

.field private mScaledSpriteWidth:F

.field private mUnscaledSpriteHeight:I

.field private mUnscaledSpriteWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILandroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmapSize:Landroid/graphics/Rect;

    .line 45
    invoke-static {p1, p3}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->loadBitmap(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmapSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    :try_start_0
    const-string/jumbo v0, "CrushedSpriteResource.parseMetadata"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    invoke-virtual {p0, p2, v0, p3}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->parseMetadata(IILandroid/content/res/Resources;)V

    .line 52
    const-string/jumbo v0, "CrushedSpriteResource.parseMetadata"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadBitmap(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "CrushedSpriteResource.loadBitmap"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 69
    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "CrushedSpriteResource.loadBitmap"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method private parseFrameRectangles(Landroid/util/JsonReader;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 263
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    move v2, v3

    .line 267
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 270
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 274
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 276
    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 280
    new-array v0, v2, [[I

    iput-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mRectangles:[[I

    move v5, v3

    .line 281
    :goto_2
    if-ge v5, v2, :cond_3

    .line 282
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [I

    move v4, v3

    .line 284
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 285
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v7, v4

    .line 284
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 287
    :cond_2
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mRectangles:[[I

    aput-object v7, v0, v5

    .line 281
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 289
    :cond_3
    return-void
.end method

.method private parseMetadataForDensity(Landroid/util/JsonReader;I)Z
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 225
    sget-boolean v1, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "density"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 230
    if-eq v0, p2, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 232
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 233
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 234
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 235
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 236
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 237
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 241
    sget-boolean v1, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mUnscaledSpriteWidth:I

    .line 244
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 245
    sget-boolean v1, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 246
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mUnscaledSpriteHeight:I

    .line 248
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 249
    sget-boolean v1, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "rectangles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_4
    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->parseFrameRectangles(Landroid/util/JsonReader;)V

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mBitmapSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrameRectangles()[[I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mRectangles:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScaledSpriteHeight()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mScaledSpriteHeight:F

    return v0
.end method

.method public getScaledSpriteWidth()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mScaledSpriteWidth:F

    return v0
.end method

.method public getUnscaledSpriteHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mUnscaledSpriteHeight:I

    return v0
.end method

.method public getUnscaledSpriteWidth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mUnscaledSpriteWidth:I

    return v0
.end method

.method parseMetadata(IILandroid/content/res/Resources;)V
    .locals 5

    .prologue
    .line 176
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 177
    new-instance v2, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 179
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 182
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 183
    sget-boolean v3, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "apiVersion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V

    .line 209
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-boolean v3, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "1.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 189
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 190
    sget-boolean v4, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const-string/jumbo v4, "scaledSpriteWidthDp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iput v3, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mScaledSpriteWidth:F

    .line 192
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 193
    sget-boolean v4, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const-string/jumbo v4, "scaledSpriteHeightDp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->mScaledSpriteHeight:F

    .line 197
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-boolean v3, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    const-string/jumbo v3, "densities"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    .line 200
    :cond_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 202
    invoke-direct {p0, v2, p2}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->parseMetadataForDensity(Landroid/util/JsonReader;I)Z

    move-result v0

    .line 203
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v0, :cond_5

    .line 208
    :cond_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V

    .line 209
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 210
    return-void
.end method
