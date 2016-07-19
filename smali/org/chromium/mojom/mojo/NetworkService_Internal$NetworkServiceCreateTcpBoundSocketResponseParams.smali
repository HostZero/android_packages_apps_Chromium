.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "NetworkService_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public boundTo:Lorg/chromium/mojom/mojo/NetAddress;

.field public result:Lorg/chromium/mojom/mojo/NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 513
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 514
    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;-><init>(I)V

    .line 537
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 527
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 533
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;
    .locals 4

    .prologue
    .line 545
    if-nez p0, :cond_1

    .line 546
    const/4 v0, 0x0

    .line 603
    :cond_0
    :goto_0
    return-object v0

    .line 548
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 549
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;-><init>(I)V

    .line 552
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 555
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 557
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 578
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 581
    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 583
    invoke-static {v1}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->boundTo:Lorg/chromium/mojom/mojo/NetAddress;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 610
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 637
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->boundTo:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 655
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 662
    if-ne p1, p0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 664
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 665
    goto :goto_0

    .line 666
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 667
    goto :goto_0

    .line 669
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;

    .line 671
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 672
    goto :goto_0

    .line 674
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->boundTo:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->boundTo:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 675
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 689
    mul-int/lit8 v1, v0, 0x1f

    invoke-static {v0}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 691
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->boundTo:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    return v0
.end method
