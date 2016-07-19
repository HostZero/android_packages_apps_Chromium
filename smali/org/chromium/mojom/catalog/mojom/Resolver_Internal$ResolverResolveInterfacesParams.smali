.class final Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Resolver_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public interfaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 666
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 667
    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;-><init>(I)V

    .line 686
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 678
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 682
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 694
    if-nez p0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 739
    :goto_0
    return-object v0

    .line 697
    :cond_0
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 698
    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;

    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;-><init>(I)V

    .line 701
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 704
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 710
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 711
    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    move v0, v1

    .line 712
    :goto_1
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v5, :cond_1

    .line 715
    iget-object v5, v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 739
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;
    .locals 1

    .prologue
    .line 689
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 746
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 754
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 755
    invoke-virtual {v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 786
    :cond_0
    return-void

    .line 761
    :cond_1
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v0, v1

    .line 762
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 765
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 793
    if-ne p1, p0, :cond_1

    .line 806
    :cond_0
    :goto_0
    return v0

    .line 795
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 796
    goto :goto_0

    .line 797
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 798
    goto :goto_0

    .line 800
    :cond_3
    check-cast p1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;

    .line 802
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 803
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 817
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 819
    return v0
.end method
