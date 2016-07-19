.class public final Lorg/chromium/mojom/mojo/UrlRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlRequest.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public autoFollowRedirects:Z

.field public body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public bypassCache:Z

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public method:Ljava/lang/String;

.field public originatingTimeTicks:J

.field public responseBodyBufferSize:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x38

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlRequest;-><init>(I)V

    .line 78
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 51
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    .line 59
    iput v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    .line 63
    iput-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    .line 67
    iput-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->originatingTimeTicks:J

    .line 74
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlRequest;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0x2c

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 86
    if-nez p0, :cond_0

    .line 265
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v2, Lorg/chromium/mojom/mojo/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 90
    new-instance v2, Lorg/chromium/mojom/mojo/UrlRequest;

    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v4}, Lorg/chromium/mojom/mojo/UrlRequest;-><init>(I)V

    .line 93
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_1

    .line 96
    const/16 v4, 0x8

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    .line 116
    :cond_1
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_2

    .line 119
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    .line 139
    :cond_2
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_3

    .line 142
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 145
    if-nez v4, :cond_9

    .line 146
    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 183
    :cond_3
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_4

    .line 186
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v8, v9}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 206
    :cond_4
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_5

    .line 209
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    .line 221
    :cond_5
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_6

    .line 224
    invoke-virtual {p0, v10, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    .line 228
    :cond_6
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_7

    .line 231
    invoke-virtual {p0, v10, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    .line 243
    :cond_7
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_8

    .line 246
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->originatingTimeTicks:J

    :cond_8
    move-object v0, v2

    .line 265
    goto :goto_0

    .line 150
    :cond_9
    invoke-virtual {v4, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 151
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    move v0, v1

    .line 152
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_3

    .line 155
    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v6, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    .line 157
    iget-object v7, v2, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v6}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v6

    aput-object v6, v7, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 9

    .prologue
    const/16 v8, 0x2c

    const/16 v4, 0x18

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 272
    sget-object v0, Lorg/chromium/mojom/mojo/UrlRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 278
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 299
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 322
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {v2, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3, v6, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode([Lorg/chromium/mojo/system/Handle;III)V

    .line 378
    iget v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    const/16 v3, 0x28

    invoke-virtual {v2, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 391
    iget-boolean v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    invoke-virtual {v2, v0, v8, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 396
    iget-boolean v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    invoke-virtual {v2, v0, v8, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 409
    iget-wide v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->originatingTimeTicks:J

    const/16 v3, 0x30

    invoke-virtual {v2, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 427
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v0, v0

    invoke-virtual {v2, v0, v4, v7}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    move v0, v1

    .line 330
    :goto_0
    iget-object v4, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 333
    iget-object v4, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v4, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    if-ne p1, p0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 437
    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 439
    goto :goto_0

    .line 441
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UrlRequest;

    .line 443
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 444
    goto :goto_0

    .line 446
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 447
    goto :goto_0

    .line 449
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 450
    goto :goto_0

    .line 452
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 453
    goto :goto_0

    .line 455
    :cond_7
    iget v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    iget v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 456
    goto :goto_0

    .line 458
    :cond_8
    iget-boolean v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 459
    goto :goto_0

    .line 461
    :cond_9
    iget-boolean v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 462
    goto :goto_0

    .line 464
    :cond_a
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->originatingTimeTicks:J

    iget-wide v4, p1, Lorg/chromium/mojom/mojo/UrlRequest;->originatingTimeTicks:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 465
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlRequest;->originatingTimeTicks:J

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    return v0
.end method
