.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "NetworkService_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

.field public receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

.field public remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

.field public sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 766
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 767
    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;-><init>(I)V

    .line 802
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 784
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 789
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 793
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 798
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 810
    if-nez p0, :cond_1

    .line 811
    const/4 v0, 0x0

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 813
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 814
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;-><init>(I)V

    .line 817
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 820
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 822
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 843
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 846
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 858
    :cond_3
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 861
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 873
    :cond_4
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 876
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 902
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 929
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 942
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 955
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 973
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 980
    if-ne p1, p0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v0

    .line 982
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 983
    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 985
    goto :goto_0

    .line 987
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;

    .line 989
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 990
    goto :goto_0

    .line 992
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 993
    goto :goto_0

    .line 995
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 996
    goto :goto_0

    .line 998
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 999
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1013
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1017
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1019
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1021
    return v0
.end method
