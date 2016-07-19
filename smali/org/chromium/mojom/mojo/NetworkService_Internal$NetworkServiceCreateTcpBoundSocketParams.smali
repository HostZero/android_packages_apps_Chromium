.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "NetworkService_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

.field public localAddress:Lorg/chromium/mojom/mojo/NetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 327
    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;-><init>(I)V

    .line 350
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 346
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;
    .locals 4

    .prologue
    .line 358
    if-nez p0, :cond_1

    .line 359
    const/4 v0, 0x0

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 362
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;-><init>(I)V

    .line 365
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 368
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 370
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 391
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 394
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 420
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 447
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 465
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    if-ne p1, p0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 475
    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 477
    goto :goto_0

    .line 479
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;

    .line 481
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 482
    goto :goto_0

    .line 484
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 485
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 499
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    return v0
.end method
