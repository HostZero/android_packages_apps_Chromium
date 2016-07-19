.class public final Lorg/chromium/mojom/mojo/HttpResponse;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpResponse.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/HttpResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpResponse;-><init>(I)V

    .line 52
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 39
    const/16 v0, 0xc8

    iput v0, p0, Lorg/chromium/mojom/mojo/HttpResponse;->statusCode:I

    .line 45
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/HttpResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 48
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpResponse;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_0

    .line 140
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v2, Lorg/chromium/mojom/mojo/HttpResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 64
    new-instance v2, Lorg/chromium/mojom/mojo/HttpResponse;

    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v4}, Lorg/chromium/mojom/mojo/HttpResponse;-><init>(I)V

    .line 67
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_1

    .line 70
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/mojom/mojo/HttpResponse;->statusCode:I

    .line 82
    :cond_1
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v4, :cond_2

    .line 85
    const/16 v4, 0xc

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/mojom/mojo/HttpResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 97
    :cond_2
    iget v3, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_3

    .line 100
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 103
    if-nez v3, :cond_4

    .line 104
    iput-object v0, v2, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    :cond_3
    move-object v0, v2

    .line 140
    goto :goto_0

    .line 108
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 109
    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    move v0, v1

    .line 110
    :goto_1
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v5, :cond_3

    .line 113
    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    .line 115
    iget-object v6, v2, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v5}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v5

    aput-object v5, v6, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 147
    sget-object v0, Lorg/chromium/mojom/mojo/HttpResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 153
    iget v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->statusCode:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 166
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 181
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v2, :cond_1

    .line 182
    invoke-virtual {v0, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 213
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v2, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v0, v1

    .line 189
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 192
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/HttpResponse;

    .line 229
    iget v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->statusCode:I

    iget v3, p1, Lorg/chromium/mojom/mojo/HttpResponse;->statusCode:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 233
    goto :goto_0

    .line 235
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 250
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/HttpResponse;->statusCode:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    return v0
.end method
