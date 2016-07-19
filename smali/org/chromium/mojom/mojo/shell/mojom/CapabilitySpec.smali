.class public final Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CapabilitySpec.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public provided:Ljava/util/Map;

.field public required:Ljava/util/Map;


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
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;-><init>(I)V

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

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;
    .locals 13

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 56
    new-instance v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v0}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;-><init>(I)V

    .line 59
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_4

    .line 62
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    .line 74
    const/16 v0, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 80
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 81
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v0, [Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v7, :cond_1

    .line 85
    mul-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    const/16 v0, 0x10

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    .line 102
    array-length v0, v6

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 103
    iget v0, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v0, [[Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    :goto_2
    iget v1, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v1, :cond_3

    .line 107
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x8

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    .line 113
    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 114
    iget v1, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v1, [Ljava/lang/String;

    aput-object v1, v7, v0

    .line 115
    const/4 v1, 0x0

    :goto_3
    iget v10, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v1, v10, :cond_2

    .line 118
    aget-object v10, v7, v0

    mul-int/lit8 v11, v1, 0x8

    add-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 104
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    .line 132
    const/4 v0, 0x0

    :goto_4
    array-length v1, v6

    if-ge v0, v1, :cond_4

    .line 133
    iget-object v1, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    aget-object v4, v6, v0

    aget-object v5, v7, v0

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 157
    :cond_4
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_7

    .line 160
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    .line 172
    const/16 v0, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    .line 178
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 179
    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v0, [Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    :goto_5
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_5

    .line 183
    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 194
    :cond_5
    const/16 v0, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 200
    array-length v0, v5

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 201
    iget v0, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v0, [Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    .line 202
    const/4 v0, 0x0

    :goto_6
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v6, :cond_6

    .line 205
    mul-int/lit8 v6, v0, 0x8

    add-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    .line 207
    invoke-static {v6}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    move-result-object v6

    aput-object v6, v4, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 216
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    .line 217
    const/4 v0, 0x0

    :goto_7
    array-length v1, v5

    if-ge v0, v1, :cond_7

    .line 218
    iget-object v1, v2, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    aget-object v3, v5, v0

    aget-object v6, v4, v0

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    move-object v0, v2

    .line 241
    goto/16 :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 13

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 248
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v4

    .line 254
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 255
    invoke-virtual {v4, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 341
    invoke-virtual {v4, v12, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 407
    :cond_1
    return-void

    .line 257
    :cond_2
    invoke-virtual {v4, v11}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v5

    .line 258
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    .line 259
    new-array v7, v6, [Ljava/lang/String;

    .line 260
    new-array v8, v6, [[Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v7, v2

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v8, v2

    .line 265
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 266
    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {v5, v6, v11, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    move v0, v3

    .line 277
    :goto_1
    if-ge v0, v6, :cond_4

    .line 280
    aget-object v2, v7, v0

    mul-int/lit8 v9, v0, 0x8

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v1, v2, v9, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {v5, v6, v12, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v1, v3

    .line 295
    :goto_2
    if-ge v1, v6, :cond_0

    .line 300
    aget-object v0, v8, v1

    if-nez v0, :cond_6

    .line 301
    mul-int/lit8 v0, v1, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 295
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 307
    :cond_6
    aget-object v0, v8, v1

    array-length v0, v0

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v2, v0, v5, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v5

    move v0, v3

    .line 308
    :goto_3
    aget-object v7, v8, v1

    array-length v7, v7

    if-ge v0, v7, :cond_5

    .line 311
    aget-object v7, v8, v1

    aget-object v7, v7, v0

    mul-int/lit8 v9, v0, 0x8

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v5, v7, v9, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 343
    :cond_7
    invoke-virtual {v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v4

    .line 344
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 345
    new-array v5, v0, [Ljava/lang/String;

    .line 346
    new-array v6, v0, [Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    .line 348
    iget-object v0, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v2

    .line 350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    aput-object v0, v6, v2

    .line 351
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 352
    goto :goto_4

    .line 362
    :cond_8
    array-length v0, v5

    invoke-virtual {v4, v0, v11, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    move v0, v3

    .line 363
    :goto_5
    array-length v2, v5

    if-ge v0, v2, :cond_9

    .line 366
    aget-object v2, v5, v0

    mul-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v1, v2, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 380
    :cond_9
    array-length v0, v6

    invoke-virtual {v4, v0, v12, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    move v0, v3

    .line 381
    :goto_6
    array-length v2, v6

    if-ge v0, v2, :cond_1

    .line 384
    aget-object v2, v6, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    if-ne p1, p0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 417
    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 419
    goto :goto_0

    .line 421
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    .line 423
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 424
    goto :goto_0

    .line 426
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 427
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 441
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    return v0
.end method
