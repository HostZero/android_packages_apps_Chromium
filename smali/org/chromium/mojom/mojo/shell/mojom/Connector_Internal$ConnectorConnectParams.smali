.class final Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Connector_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

.field public localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

.field public remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

.field public target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 200
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;-><init>(I)V

    .line 231
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 217
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 227
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    .line 242
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 243
    new-instance v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;

    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;-><init>(I)V

    .line 246
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 249
    const/16 v0, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 272
    :cond_1
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_2

    .line 275
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 287
    :cond_2
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_3

    .line 290
    const/16 v0, 0x14

    sget-object v3, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    .line 318
    :cond_3
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_4

    .line 321
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    :cond_4
    move-object v0, v1

    .line 343
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 350
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 377
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 390
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    const/16 v2, 0x14

    sget-object v3, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 419
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 437
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    if-ne p1, p0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 447
    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 449
    goto :goto_0

    .line 451
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;

    .line 453
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 454
    goto :goto_0

    .line 456
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 457
    goto :goto_0

    .line 459
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 460
    goto :goto_0

    .line 462
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 463
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 477
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    return v0
.end method
