.class final Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlLoader_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public response:Lorg/chromium/mojom/mojo/UrlResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 370
    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;-><init>(I)V

    .line 389
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 381
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 385
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;
    .locals 3

    .prologue
    .line 397
    if-nez p0, :cond_1

    .line 398
    const/4 v0, 0x0

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 400
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 401
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;-><init>(I)V

    .line 404
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 407
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 409
    invoke-static {v1}, Lorg/chromium/mojom/mojo/UrlResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlResponse;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 436
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 460
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    if-ne p1, p0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 470
    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;

    .line 476
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 477
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 491
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    return v0
.end method
