.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocket_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public code:S

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 981
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 982
    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;-><init>(I)V

    .line 1005
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 995
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 1001
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;
    .locals 3

    .prologue
    .line 1013
    if-nez p0, :cond_1

    .line 1014
    const/4 v0, 0x0

    .line 1065
    :cond_0
    :goto_0
    return-object v0

    .line 1016
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 1017
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;-><init>(I)V

    .line 1020
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 1023
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v2

    iput-short v2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    .line 1043
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 1046
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;
    .locals 1

    .prologue
    .line 1008
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 1072
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 1078
    iget-short v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    .line 1099
    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 1117
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1124
    if-ne p1, p0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return v0

    .line 1126
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1127
    goto :goto_0

    .line 1128
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1129
    goto :goto_0

    .line 1131
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;

    .line 1133
    iget-short v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    iget-short v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1134
    goto :goto_0

    .line 1136
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1137
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1151
    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1153
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    return v0
.end method
