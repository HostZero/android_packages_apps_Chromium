.class final Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Catalog_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public entries:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 323
    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;-><init>(I)V

    .line 342
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 338
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 350
    if-nez p0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    .line 353
    :cond_0
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 354
    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;-><init>(I)V

    .line 357
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_3

    .line 360
    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 366
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    .line 372
    invoke-virtual {v3, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 378
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 379
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v0, [Ljava/lang/String;

    move v0, v1

    .line 380
    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v7, :cond_1

    .line 383
    mul-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_1
    const/16 v0, 0x10

    invoke-virtual {v3, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 400
    array-length v0, v6

    invoke-virtual {v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 401
    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v0, [Lorg/chromium/mojom/catalog/mojom/CatalogEntry;

    move v0, v1

    .line 402
    :goto_2
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v7, :cond_2

    .line 405
    mul-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v3, v7, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    .line 407
    invoke-static {v7}, Lorg/chromium/mojom/catalog/mojom/CatalogEntry;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/CatalogEntry;

    move-result-object v7

    aput-object v7, v5, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 416
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    .line 417
    :goto_3
    array-length v0, v6

    if-ge v1, v0, :cond_3

    .line 418
    iget-object v0, v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    aget-object v3, v6, v1

    aget-object v4, v5, v1

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v2

    .line 441
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x8

    const/4 v3, 0x0

    .line 448
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 455
    invoke-virtual {v0, v9, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 521
    :cond_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {v0, v9}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v4

    .line 458
    iget-object v0, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    .line 459
    new-array v6, v5, [Ljava/lang/String;

    .line 460
    new-array v7, v5, [Lorg/chromium/mojom/catalog/mojom/CatalogEntry;

    .line 462
    iget-object v0, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v6, v2

    .line 464
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/catalog/mojom/CatalogEntry;

    aput-object v0, v7, v2

    .line 465
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 466
    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {v4, v5, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    move v0, v3

    .line 477
    :goto_1
    if-ge v0, v5, :cond_3

    .line 480
    aget-object v2, v6, v0

    mul-int/lit8 v8, v0, 0x8

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v1, v2, v8, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    :cond_3
    const/16 v0, 0x10

    invoke-virtual {v4, v5, v0, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    move v0, v3

    .line 495
    :goto_2
    if-ge v0, v5, :cond_0

    .line 498
    aget-object v2, v7, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    if-ne p1, p0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 530
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 531
    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 533
    goto :goto_0

    .line 535
    :cond_3
    check-cast p1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    .line 537
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    iget-object v3, p1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 538
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 552
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 554
    return v0
.end method
