.class final Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocketClient_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public extensions:Ljava/lang/String;

.field public receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public selectedSubprotocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 301
    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;-><init>(I)V

    .line 330
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 323
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 326
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    if-nez p0, :cond_1

    .line 339
    const/4 v0, 0x0

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 342
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;-><init>(I)V

    .line 345
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 348
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    .line 368
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 371
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    .line 391
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 394
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 447
    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 468
    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 486
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 493
    if-ne p1, p0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 496
    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 498
    goto :goto_0

    .line 500
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;

    .line 502
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 506
    goto :goto_0

    .line 508
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 509
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 523
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    return v0
.end method
