.class final Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Resolver_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public resolvedMojoName:Ljava/lang/String;

.field public response:Lorg/chromium/mojom/mojo/UrlResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 417
    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;-><init>(I)V

    .line 440
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 430
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 436
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    if-nez p0, :cond_1

    .line 449
    const/4 v0, 0x0

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 452
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;-><init>(I)V

    .line 455
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 458
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    .line 478
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 481
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 483
    invoke-static {v1}, Lorg/chromium/mojom/mojo/UrlResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlResponse;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 537
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 555
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 562
    if-ne p1, p0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 565
    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 567
    goto :goto_0

    .line 569
    :cond_3
    check-cast p1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;

    .line 571
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 572
    goto :goto_0

    .line 574
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    iget-object v3, p1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 575
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 589
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    return v0
.end method
