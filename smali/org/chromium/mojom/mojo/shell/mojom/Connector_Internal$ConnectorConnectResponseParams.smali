.class final Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Connector_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public applicationId:I

.field public result:I

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 496
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;-><init>(I)V

    .line 523
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 511
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 519
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    .locals 3

    .prologue
    .line 531
    if-nez p0, :cond_1

    .line 532
    const/4 v0, 0x0

    .line 590
    :cond_0
    :goto_0
    return-object v0

    .line 534
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 535
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;-><init>(I)V

    .line 538
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 541
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    .line 553
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 556
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    .line 568
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 571
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 597
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 603
    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 616
    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 629
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 647
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 654
    if-ne p1, p0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 657
    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 659
    goto :goto_0

    .line 661
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    .line 663
    iget v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    iget v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 664
    goto :goto_0

    .line 666
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 667
    goto :goto_0

    .line 669
    :cond_5
    iget v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    iget v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 670
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 684
    mul-int/lit8 v1, v0, 0x1f

    invoke-static {v0}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 686
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 688
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 690
    return v0
.end method
