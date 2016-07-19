.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocket_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/mojom/mojo/WebSocketClient;

.field public origin:Ljava/lang/String;

.field public protocols:[Ljava/lang/String;

.field public sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x30

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 269
    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;-><init>(I)V

    .line 306
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 288
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 297
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 302
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 314
    if-nez p0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    .line 317
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 318
    new-instance v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;-><init>(I)V

    .line 321
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 324
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    .line 344
    :cond_1
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_2

    .line 347
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 353
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 354
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    move v0, v1

    .line 355
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_2

    .line 358
    iget-object v6, v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    mul-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_2
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_3

    .line 386
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    .line 406
    :cond_3
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_4

    .line 409
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 421
    :cond_4
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_5

    .line 424
    const/16 v0, 0x24

    sget-object v3, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    :cond_5
    move-object v0, v2

    .line 451
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 458
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 464
    iget-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 487
    iget-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 488
    invoke-virtual {v2, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 543
    iget-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 556
    iget-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    const/16 v3, 0x24

    sget-object v4, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v2, v0, v3, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 582
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    array-length v0, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    move v0, v1

    .line 495
    :goto_0
    iget-object v4, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 498
    iget-object v4, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v4, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 589
    if-ne p1, p0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 592
    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 594
    goto :goto_0

    .line 596
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    .line 598
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 599
    goto :goto_0

    .line 601
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 602
    goto :goto_0

    .line 604
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 605
    goto :goto_0

    .line 607
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 608
    goto :goto_0

    .line 610
    :cond_7
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 611
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 625
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 631
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    return v0
.end method
