.class final Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpConnection_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 201
    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;-><init>(I)V

    .line 220
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 216
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;
    .locals 3

    .prologue
    .line 228
    if-nez p0, :cond_1

    .line 229
    const/4 v0, 0x0

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 232
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;-><init>(I)V

    .line 235
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 238
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->size:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 270
    iget v1, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->size:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 288
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    if-ne p1, p0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 298
    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;

    .line 304
    iget v2, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->size:I

    iget v3, p1, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->size:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 305
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 319
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->size:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    return v0
.end method