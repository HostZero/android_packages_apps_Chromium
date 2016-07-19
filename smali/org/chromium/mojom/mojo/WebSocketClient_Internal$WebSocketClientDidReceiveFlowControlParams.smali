.class final Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocketClient_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public quota:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 744
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 745
    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;-><init>(I)V

    .line 764
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 756
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 760
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;
    .locals 4

    .prologue
    .line 772
    if-nez p0, :cond_1

    .line 773
    const/4 v0, 0x0

    .line 801
    :cond_0
    :goto_0
    return-object v0

    .line 775
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 776
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;-><init>(I)V

    .line 779
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 782
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;
    .locals 1

    .prologue
    .line 767
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 808
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 814
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 832
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 839
    if-ne p1, p0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 842
    goto :goto_0

    .line 843
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 844
    goto :goto_0

    .line 846
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;

    .line 848
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    iget-wide v4, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 849
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 861
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 863
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 865
    return v0
.end method
