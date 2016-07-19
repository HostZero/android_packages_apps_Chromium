.class final Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UdpSocket_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public localAddr:Lorg/chromium/mojom/mojo/NetAddress;

.field public receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

.field public result:Lorg/chromium/mojom/mojo/NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1281
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 1282
    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;-><init>(I)V

    .line 1309
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1297
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 1305
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1317
    if-nez p0, :cond_1

    .line 1318
    const/4 v0, 0x0

    .line 1398
    :cond_0
    :goto_0
    return-object v0

    .line 1320
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 1321
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;-><init>(I)V

    .line 1324
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 1327
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 1329
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 1350
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 1353
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 1355
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 1376
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 1379
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;
    .locals 1

    .prologue
    .line 1312
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1405
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 1411
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 1432
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 1453
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 1471
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1478
    if-ne p1, p0, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return v0

    .line 1480
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1481
    goto :goto_0

    .line 1482
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1483
    goto :goto_0

    .line 1485
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;

    .line 1487
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1488
    goto :goto_0

    .line 1490
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 1491
    goto :goto_0

    .line 1493
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1494
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1508
    mul-int/lit8 v1, v0, 0x1f

    invoke-static {v0}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 1510
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1512
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1514
    return v0
.end method
