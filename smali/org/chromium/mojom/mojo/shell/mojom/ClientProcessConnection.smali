.class public final Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ClientProcessConnection.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

.field public shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;-><init>(I)V

    .line 48
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 37
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 41
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 44
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 60
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;-><init>(I)V

    .line 63
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 66
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 78
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 81
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 118
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 128
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p1, p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    .line 144
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 145
    goto :goto_0

    .line 147
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 148
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->shellClient:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;->pidReceiverRequest:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    return v0
.end method
