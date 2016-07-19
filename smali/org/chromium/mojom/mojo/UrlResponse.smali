.class public final Lorg/chromium/mojom/mojo/UrlResponse;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlResponse.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public charset:Ljava/lang/String;

.field public error:Lorg/chromium/mojom/mojo/NetworkError;

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public mimeType:Ljava/lang/String;

.field public redirectMethod:Ljava/lang/String;

.field public redirectReferrer:Ljava/lang/String;

.field public redirectUrl:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field public statusCode:I

.field public statusLine:Ljava/lang/String;

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

    const/16 v2, 0x60

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/UrlResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlResponse;-><init>(I)V

    .line 86
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 59
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 82
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlResponse;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 94
    if-nez p0, :cond_0

    .line 384
    :goto_0
    return-object v0

    .line 97
    :cond_0
    sget-object v2, Lorg/chromium/mojom/mojo/UrlResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 98
    new-instance v2, Lorg/chromium/mojom/mojo/UrlResponse;

    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v4}, Lorg/chromium/mojom/mojo/UrlResponse;-><init>(I)V

    .line 101
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_1

    .line 104
    const/16 v4, 0x8

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 106
    invoke-static {v4}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    .line 127
    :cond_1
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_2

    .line 130
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 142
    :cond_2
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_3

    .line 145
    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    .line 157
    :cond_3
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_4

    .line 160
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    .line 180
    :cond_4
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_5

    .line 183
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    .line 203
    :cond_5
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_6

    .line 206
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    .line 226
    :cond_6
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_7

    .line 229
    const/16 v4, 0x30

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 232
    if-nez v4, :cond_d

    .line 233
    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 270
    :cond_7
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_8

    .line 273
    const/16 v0, 0x38

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    .line 293
    :cond_8
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_9

    .line 296
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    .line 316
    :cond_9
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_a

    .line 319
    const/16 v0, 0x48

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    .line 339
    :cond_a
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_b

    .line 342
    const/16 v0, 0x50

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    .line 362
    :cond_b
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_c

    .line 365
    const/16 v0, 0x58

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    :cond_c
    move-object v0, v2

    .line 384
    goto/16 :goto_0

    .line 237
    :cond_d
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 238
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    move v0, v1

    .line 239
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_7

    .line 242
    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v6, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    .line 244
    iget-object v7, v2, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v6}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v6

    aput-object v6, v7, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    .prologue
    const/16 v4, 0x30

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 391
    sget-object v0, Lorg/chromium/mojom/mojo/UrlResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 397
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 418
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 431
    iget v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    const/16 v3, 0x14

    invoke-virtual {v2, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 444
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {v2, v0, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 465
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 486
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v0, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 509
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v0, :cond_1

    .line 510
    invoke-virtual {v2, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {v2, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 565
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v2, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 586
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    const/16 v1, 0x48

    invoke-virtual {v2, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 607
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {v2, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 628
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {v2, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 646
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v0, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    move v0, v1

    .line 517
    :goto_0
    iget-object v4, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 520
    iget-object v4, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v4, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    if-ne p1, p0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 655
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 656
    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 658
    goto :goto_0

    .line 660
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UrlResponse;

    .line 662
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 663
    goto :goto_0

    .line 665
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 666
    goto :goto_0

    .line 668
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 669
    goto :goto_0

    .line 671
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 672
    goto :goto_0

    .line 674
    :cond_7
    iget v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    iget v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 675
    goto :goto_0

    .line 677
    :cond_8
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 678
    goto :goto_0

    .line 680
    :cond_9
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 681
    goto :goto_0

    .line 683
    :cond_a
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 684
    goto :goto_0

    .line 686
    :cond_b
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 687
    goto :goto_0

    .line 689
    :cond_c
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 690
    goto/16 :goto_0

    .line 692
    :cond_d
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 693
    goto/16 :goto_0

    .line 695
    :cond_e
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 696
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 710
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 714
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 718
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 720
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 724
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 732
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    return v0
.end method
