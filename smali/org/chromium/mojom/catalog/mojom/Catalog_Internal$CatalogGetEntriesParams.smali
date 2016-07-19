.class final Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Catalog_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public urls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 160
    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;-><init>(I)V

    .line 179
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 175
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    .line 190
    :cond_0
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 191
    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;

    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;-><init>(I)V

    .line 194
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 197
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 203
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 204
    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    move v0, v1

    .line 205
    :goto_1
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v5, :cond_1

    .line 208
    iget-object v5, v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 232
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 239
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 247
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 248
    invoke-virtual {v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 279
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v0, v1

    .line 255
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 258
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    if-ne p1, p0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 289
    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 291
    goto :goto_0

    .line 293
    :cond_3
    check-cast p1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;

    .line 295
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    return v0
.end method
