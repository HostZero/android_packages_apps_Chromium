.class public final Lorg/chromium/mojom/skia/Bitmap;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Bitmap.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public alphaType:I

.field public colorType:I

.field public height:I

.field public pixelData:[B

.field public profileType:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/skia/Bitmap;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/skia/Bitmap;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/skia/Bitmap;-><init>(I)V

    .line 60
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 56
    return-void
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    .line 187
    sget-object v0, Lorg/chromium/mojom/skia/Bitmap;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 193
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 206
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 219
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 232
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 245
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 266
    iget-object v1, p0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    .line 284
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    if-ne p1, p0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 294
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_3
    check-cast p1, Lorg/chromium/mojom/skia/Bitmap;

    .line 300
    iget v2, p0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    iget v3, p1, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 301
    goto :goto_0

    .line 303
    :cond_4
    iget v2, p0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    iget v3, p1, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :cond_5
    iget v2, p0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    iget v3, p1, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_6
    iget v2, p0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    iget v3, p1, Lorg/chromium/mojom/skia/Bitmap;->width:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 310
    goto :goto_0

    .line 312
    :cond_7
    iget v2, p0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    iget v3, p1, Lorg/chromium/mojom/skia/Bitmap;->height:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 313
    goto :goto_0

    .line 315
    :cond_8
    iget-object v2, p0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    iget-object v3, p1, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 316
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 330
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    return v0
.end method
