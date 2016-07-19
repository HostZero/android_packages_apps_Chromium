.class public final Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CapabilityRequest.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public classes:[Ljava/lang/String;

.field public interfaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;-><init>(I)V

    .line 44
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 40
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 56
    new-instance v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v0}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;-><init>(I)V

    .line 59
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 69
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    move v0, v1

    .line 70
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_1

    .line 73
    iget-object v6, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    mul-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_1
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_2

    .line 101
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 107
    invoke-virtual {v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 108
    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    move v0, v1

    .line 109
    :goto_2
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v5, :cond_2

    .line 112
    iget-object v5, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 136
    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v3, 0x8

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 143
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 151
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 189
    invoke-virtual {v2, v7, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 220
    :cond_1
    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v2, v0, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    move v0, v1

    .line 159
    :goto_0
    iget-object v4, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 162
    iget-object v4, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v4, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v2, v0, v7, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v0, v1

    .line 196
    :goto_1
    iget-object v3, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 199
    iget-object v3, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 230
    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    .line 236
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 237
    goto :goto_0

    .line 239
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 240
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    return v0
.end method
