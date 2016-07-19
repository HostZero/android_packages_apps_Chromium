.class final Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UdpSocket_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public data:[B

.field public destAddr:Lorg/chromium/mojom/mojo/NetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2695
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 2696
    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;-><init>(I)V

    .line 2719
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 2709
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 2715
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;
    .locals 4

    .prologue
    .line 2727
    if-nez p0, :cond_1

    .line 2728
    const/4 v0, 0x0

    .line 2782
    :cond_0
    :goto_0
    return-object v0

    .line 2730
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 2731
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;-><init>(I)V

    .line 2734
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 2737
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 2739
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 2760
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 2763
    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;
    .locals 1

    .prologue
    .line 2722
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    .line 2789
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 2795
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 2816
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    .line 2834
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2841
    if-ne p1, p0, :cond_1

    .line 2857
    :cond_0
    :goto_0
    return v0

    .line 2843
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 2844
    goto :goto_0

    .line 2845
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 2846
    goto :goto_0

    .line 2848
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;

    .line 2850
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2851
    goto :goto_0

    .line 2853
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2854
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2866
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 2868
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2870
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2872
    return v0
.end method
