.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "NetworkService_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

.field public localAddress:Lorg/chromium/mojom/mojo/NetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1415
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 1416
    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;-><init>(I)V

    .line 1439
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1429
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 1435
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1447
    if-nez p0, :cond_0

    .line 1448
    const/4 v0, 0x0

    .line 1502
    :goto_0
    return-object v0

    .line 1450
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 1451
    new-instance v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;-><init>(I)V

    .line 1454
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_1

    .line 1457
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 1459
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 1480
    :cond_1
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_2

    .line 1483
    const/16 v0, 0x10

    sget-object v2, Lorg/chromium/mojom/mojo/HttpServerDelegate;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/HttpServerDelegate;

    iput-object v0, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    :cond_2
    move-object v0, v1

    .line 1502
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;
    .locals 1

    .prologue
    .line 1442
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1509
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 1515
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 1536
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    const/16 v2, 0x10

    sget-object v3, Lorg/chromium/mojom/mojo/HttpServerDelegate;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 1554
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1561
    if-ne p1, p0, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return v0

    .line 1563
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1564
    goto :goto_0

    .line 1565
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1566
    goto :goto_0

    .line 1568
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;

    .line 1570
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1571
    goto :goto_0

    .line 1573
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1574
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1588
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1590
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1592
    return v0
.end method
