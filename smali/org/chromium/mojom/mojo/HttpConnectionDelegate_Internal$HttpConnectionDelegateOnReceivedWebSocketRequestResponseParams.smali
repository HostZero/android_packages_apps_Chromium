.class final Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpConnectionDelegate_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/mojom/mojo/WebSocketClient;

.field public sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 664
    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;-><init>(I)V

    .line 693
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 679
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 684
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 689
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 701
    if-nez p0, :cond_0

    .line 702
    const/4 v0, 0x0

    .line 760
    :goto_0
    return-object v0

    .line 704
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 705
    new-instance v1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;-><init>(I)V

    .line 708
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_1

    .line 711
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 723
    :cond_1
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 726
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 738
    :cond_2
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_3

    .line 741
    const/16 v0, 0x10

    sget-object v2, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iput-object v0, v1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    :cond_3
    move-object v0, v1

    .line 760
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;
    .locals 1

    .prologue
    .line 696
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 767
    sget-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 786
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 799
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    const/16 v2, 0x10

    sget-object v3, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 817
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 824
    if-ne p1, p0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 827
    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 829
    goto :goto_0

    .line 831
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;

    .line 833
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 834
    goto :goto_0

    .line 836
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 837
    goto :goto_0

    .line 839
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 840
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 852
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 854
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 858
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    return v0
.end method
