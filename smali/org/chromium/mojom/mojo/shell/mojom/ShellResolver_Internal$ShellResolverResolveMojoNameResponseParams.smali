.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellResolver_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

.field public mojoFileUrl:Ljava/lang/String;

.field public qualifier:Ljava/lang/String;

.field public resolvedMojoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 291
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;-><init>(I)V

    .line 322
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 308
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 318
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    if-nez p0, :cond_1

    .line 331
    const/4 v0, 0x0

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 334
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;-><init>(I)V

    .line 337
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 340
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    .line 360
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 363
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    .line 383
    :cond_3
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 386
    const/16 v2, 0x18

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 388
    invoke-static {v2}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    .line 409
    :cond_4
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 412
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 465
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 486
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 507
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 525
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    if-ne p1, p0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v0

    .line 534
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 535
    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 537
    goto :goto_0

    .line 539
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    .line 541
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 542
    goto :goto_0

    .line 544
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 545
    goto :goto_0

    .line 547
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 548
    goto :goto_0

    .line 550
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 551
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 565
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    return v0
.end method
