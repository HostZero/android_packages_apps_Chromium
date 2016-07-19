.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellClient_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public id:I

.field public identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 206
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;-><init>(I)V

    .line 229
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 225
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;
    .locals 4

    .prologue
    .line 237
    if-nez p0, :cond_1

    .line 238
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 241
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;-><init>(I)V

    .line 244
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 247
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 270
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 273
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 299
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 326
    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 344
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    if-ne p1, p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 354
    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    .line 360
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_4
    iget v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    iget v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 364
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 378
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    return v0
.end method
