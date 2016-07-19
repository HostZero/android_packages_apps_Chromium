.class final Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "TcpServerSocket_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

.field public receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

.field public sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 164
    sput-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;-><init>(I)V

    .line 195
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 182
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 186
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 191
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    if-nez p0, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 207
    new-instance v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;-><init>(I)V

    .line 210
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 213
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 225
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 228
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 240
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 243
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    sget-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 288
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 301
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 319
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    if-ne p1, p0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 329
    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 331
    goto :goto_0

    .line 333
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;

    .line 335
    iget-object v2, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 336
    goto :goto_0

    .line 338
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 339
    goto :goto_0

    .line 341
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 356
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    return v0
.end method
