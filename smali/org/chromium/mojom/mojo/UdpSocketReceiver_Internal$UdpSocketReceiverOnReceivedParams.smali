.class final Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UdpSocketReceiver_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public data:[B

.field public result:Lorg/chromium/mojom/mojo/NetworkError;

.field public srcAddr:Lorg/chromium/mojom/mojo/NetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 157
    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;-><init>(I)V

    .line 184
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 180
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 192
    if-nez p0, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 196
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;-><init>(I)V

    .line 199
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 202
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 204
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 225
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 228
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 230
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->srcAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 251
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 254
    const/16 v1, 0x18

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->data:[B

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 307
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->srcAddr:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 328
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->data:[B

    const/16 v2, 0x18

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    .line 346
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 353
    if-ne p1, p0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 356
    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 358
    goto :goto_0

    .line 360
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;

    .line 362
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->srcAddr:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->srcAddr:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 366
    goto :goto_0

    .line 368
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->data:[B

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->data:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 369
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 383
    mul-int/lit8 v1, v0, 0x1f

    invoke-static {v0}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 385
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->srcAddr:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocketReceiver_Internal$UdpSocketReceiverOnReceivedParams;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    return v0
.end method
