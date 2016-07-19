.class public final Lorg/chromium/mojom/mojo/NetAddress;
.super Lorg/chromium/mojo/bindings/Struct;
.source "NetAddress.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public family:I

.field public ipv4:Lorg/chromium/mojom/mojo/NetAddressIPv4;

.field public ipv6:Lorg/chromium/mojom/mojo/NetAddressIPv6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/NetAddress;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/NetAddress;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/NetAddress;-><init>(I)V

    .line 50
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojom/mojo/NetAddress;->family:I

    .line 46
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    if-nez p0, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/NetAddress;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 62
    new-instance v0, Lorg/chromium/mojom/mojo/NetAddress;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/NetAddress;-><init>(I)V

    .line 65
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 68
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojom/mojo/NetAddress;->family:I

    .line 88
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 91
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetAddressIPv4;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddressIPv4;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/NetAddress;->ipv4:Lorg/chromium/mojom/mojo/NetAddressIPv4;

    .line 114
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 117
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lorg/chromium/mojom/mojo/NetAddressIPv6;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddressIPv6;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/NetAddress;->ipv6:Lorg/chromium/mojom/mojo/NetAddressIPv6;

    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 146
    sget-object v0, Lorg/chromium/mojom/mojo/NetAddress;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 152
    iget v1, p0, Lorg/chromium/mojom/mojo/NetAddress;->family:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 173
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetAddress;->ipv4:Lorg/chromium/mojom/mojo/NetAddressIPv4;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 194
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetAddress;->ipv6:Lorg/chromium/mojom/mojo/NetAddressIPv6;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 212
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    if-ne p1, p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 222
    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/NetAddress;

    .line 228
    iget v2, p0, Lorg/chromium/mojom/mojo/NetAddress;->family:I

    iget v3, p1, Lorg/chromium/mojom/mojo/NetAddress;->family:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetAddress;->ipv4:Lorg/chromium/mojom/mojo/NetAddressIPv4;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetAddress;->ipv4:Lorg/chromium/mojom/mojo/NetAddressIPv4;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetAddress;->ipv6:Lorg/chromium/mojom/mojo/NetAddressIPv6;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetAddress;->ipv6:Lorg/chromium/mojom/mojo/NetAddressIPv6;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 249
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/NetAddress;->family:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetAddress;->ipv4:Lorg/chromium/mojom/mojo/NetAddressIPv4;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetAddress;->ipv6:Lorg/chromium/mojom/mojo/NetAddressIPv6;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    return v0
.end method
