.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocket_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public fin:Z

.field public numBytes:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 646
    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;-><init>(I)V

    .line 673
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 661
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 669
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    .locals 4

    .prologue
    .line 681
    if-nez p0, :cond_1

    .line 682
    const/4 v0, 0x0

    .line 740
    :cond_0
    :goto_0
    return-object v0

    .line 684
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 685
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;-><init>(I)V

    .line 688
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 691
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    .line 703
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 706
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    .line 718
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 721
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    .locals 1

    .prologue
    .line 676
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 747
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 753
    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 766
    iget v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 779
    iget v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 797
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 804
    if-ne p1, p0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 807
    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 809
    goto :goto_0

    .line 811
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    .line 813
    iget-boolean v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 814
    goto :goto_0

    .line 816
    :cond_4
    iget v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    iget v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 817
    goto :goto_0

    .line 819
    :cond_5
    iget v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    iget v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 820
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 832
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 834
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    return v0
.end method
