.class final Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "InterfaceProvider_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public interfaceName:Ljava/lang/String;

.field public pipe:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 155
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;-><init>(I)V

    .line 180
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 173
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 176
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    if-nez p0, :cond_1

    .line 189
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 192
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;-><init>(I)V

    .line 195
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 198
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->interfaceName:Ljava/lang/String;

    .line 218
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 221
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->interfaceName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 274
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 292
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    if-ne p1, p0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 302
    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;

    .line 308
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->interfaceName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->interfaceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 312
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 326
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->interfaceName:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    return v0
.end method
