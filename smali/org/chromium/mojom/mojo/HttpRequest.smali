.class public final Lorg/chromium/mojom/mojo/HttpRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpRequest.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public method:Ljava/lang/String;

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

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/HttpRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpRequest;-><init>(I)V

    .line 56
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 41
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 52
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpRequest;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 64
    if-nez p0, :cond_0

    .line 183
    :goto_0
    return-object v0

    .line 67
    :cond_0
    sget-object v2, Lorg/chromium/mojom/mojo/HttpRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 68
    new-instance v2, Lorg/chromium/mojom/mojo/HttpRequest;

    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v4}, Lorg/chromium/mojom/mojo/HttpRequest;-><init>(I)V

    .line 71
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_1

    .line 74
    const/16 v4, 0x8

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    .line 94
    :cond_1
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_2

    .line 97
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    .line 117
    :cond_2
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_3

    .line 120
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 123
    if-nez v4, :cond_5

    .line 124
    iput-object v0, v2, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 161
    :cond_3
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_4

    .line 164
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    :cond_4
    move-object v0, v2

    .line 183
    goto :goto_0

    .line 128
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 129
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    move v0, v1

    .line 130
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_3

    .line 133
    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v6, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    .line 135
    iget-object v7, v2, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v6}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v6

    aput-object v6, v7, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    .prologue
    const/16 v4, 0x18

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 190
    sget-object v0, Lorg/chromium/mojom/mojo/HttpRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 196
    iget-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 217
    iget-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 240
    iget-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {v2, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v1, 0x20

    invoke-virtual {v2, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 293
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v0, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    move v0, v1

    .line 248
    :goto_0
    iget-object v4, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 251
    iget-object v4, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v4, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    if-ne p1, p0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 303
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/HttpRequest;

    .line 309
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 310
    goto :goto_0

    .line 312
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 313
    goto :goto_0

    .line 315
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 316
    goto :goto_0

    .line 318
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 319
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 333
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    return v0
.end method
