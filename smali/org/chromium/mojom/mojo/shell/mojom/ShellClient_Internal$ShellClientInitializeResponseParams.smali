.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellClient_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 393
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;-><init>(I)V

    .line 412
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 404
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 408
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;
    .locals 3

    .prologue
    .line 420
    if-nez p0, :cond_1

    .line 421
    const/4 v0, 0x0

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 424
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;-><init>(I)V

    .line 427
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 430
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 456
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 480
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 487
    if-ne p1, p0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 490
    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 492
    goto :goto_0

    .line 494
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;

    .line 496
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 497
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 511
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    return v0
.end method
