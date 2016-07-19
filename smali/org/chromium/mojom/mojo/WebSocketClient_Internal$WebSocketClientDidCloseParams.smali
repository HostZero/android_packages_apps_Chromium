.class final Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocketClient_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public code:S

.field public reason:Ljava/lang/String;

.field public wasClean:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1006
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 1007
    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;-><init>(I)V

    .line 1034
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1022
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 1030
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1042
    if-nez p0, :cond_1

    .line 1043
    const/4 v0, 0x0

    .line 1101
    :cond_0
    :goto_0
    return-object v0

    .line 1045
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 1046
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;-><init>(I)V

    .line 1049
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 1052
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    .line 1060
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 1063
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v2

    iput-short v2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    .line 1079
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 1082
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;
    .locals 1

    .prologue
    .line 1037
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1108
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 1114
    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 1123
    iget-short v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    .line 1140
    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 1158
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1165
    if-ne p1, p0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1167
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1168
    goto :goto_0

    .line 1169
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1170
    goto :goto_0

    .line 1172
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;

    .line 1174
    iget-boolean v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1175
    goto :goto_0

    .line 1177
    :cond_4
    iget-short v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    iget-short v3, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 1178
    goto :goto_0

    .line 1180
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1181
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1195
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1197
    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1199
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1201
    return v0
.end method
