.class public Lorg/chromium/mojo/bindings/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final mBaseOffset:I

.field private final mMessage:Lorg/chromium/mojo/bindings/Message;

.field private final mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Decoder$Validator;-><init>(JI)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    .line 106
    return-void
.end method

.method private constructor <init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    .line 110
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    iput p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    .line 112
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    .line 113
    return-void
.end method

.method private getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;
    .locals 3

    .prologue
    .line 688
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-direct {v0, v1, v2, p1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    return-object v0
.end method

.method private readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 159
    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    .line 160
    if-gez v0, :cond_0

    .line 161
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    if-gez v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 165
    :cond_1
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Negative elements or version. Unsigned integers are not valid for java."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2
    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    invoke-direct {v2, v0, v1}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    return-object v2
.end method

.method private readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 9

    .prologue
    .line 712
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 713
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    int-to-long v2, v1

    const-wide/16 v4, 0x8

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    int-to-long v6, v1

    mul-long/2addr v6, p1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 715
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Array header is incorrect."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eq v1, p3, :cond_1

    .line 719
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Incorrect array length. Expected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_1
    return-object v0
.end method

.method private validateBufferSize(II)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 727
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Buffer is smaller than expected."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    return-void
.end method


# virtual methods
.method public readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 6

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 174
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 175
    iget v1, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    aget-object v2, p1, v0

    iget v2, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-gt v1, v2, :cond_2

    .line 176
    const/4 v1, 0x0

    move v2, v0

    .line 177
    :goto_0
    if-ltz v2, :cond_4

    .line 178
    aget-object v0, p1, v2

    .line 179
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-lt v4, v5, :cond_1

    .line 184
    :goto_1
    if-eqz v0, :cond_0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v1, v3, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-eq v0, v1, :cond_3

    .line 185
    :cond_0
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Header doesn\'t correspond to any known version."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 189
    :cond_2
    iget v1, v3, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    aget-object v0, p1, v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-ge v1, v0, :cond_3

    .line 190
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Message newer than the last known version cannot be shorter than required by the last known version."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3
    return-object v3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public readBoolean(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 241
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v1

    shl-int v2, v0, p2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte(I)B
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 233
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public readBytes(III)[B
    .locals 4

    .prologue
    .line 332
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 333
    if-nez v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 336
    :cond_0
    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 337
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [B

    .line 338
    iget-object v2, v1, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, v1, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    iget-object v1, v1, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readConsumerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 5

    .prologue
    .line 566
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 567
    if-nez v2, :cond_0

    .line 568
    const/4 v0, 0x0

    .line 577
    :goto_0
    return-object v0

    .line 570
    :cond_0
    const-wide/16 v0, 0x4

    invoke-direct {v2, v0, v1, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 571
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v0, [Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 572
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 573
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v3

    aput-object v3, v1, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 577
    goto :goto_0
.end method

.method public readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 120
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    int-to-long v2, v1

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 121
    invoke-direct {p0, v6, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 124
    return-object v0
.end method

.method public readDataHeaderForMap()V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 218
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-eq v1, v2, :cond_0

    .line 219
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Incorrect header for map. The size is incorrect."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    sget-object v1, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eq v0, v1, :cond_1

    .line 223
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Incorrect header for map. The version is incorrect."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    return-void
.end method

.method public readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 2

    .prologue
    .line 202
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    return-object v0
.end method

.method public readDouble(I)D
    .locals 2

    .prologue
    .line 280
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 281
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public readHandle(IZ)Lorg/chromium/mojo/system/Handle;
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 423
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 424
    if-nez p2, :cond_0

    .line 425
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Trying to decode an invalid handle for a non-nullable type."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    .line 431
    :goto_0
    return-object v0

    .line 430
    :cond_1
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimHandle(I)V

    .line 431
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Handle;

    goto :goto_0
.end method

.method public readInt(I)I
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 257
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v1

    .line 490
    if-nez v1, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    goto :goto_0
.end method

.method public readLong(I)J
    .locals 2

    .prologue
    .line 272
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 273
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;
    .locals 6

    .prologue
    .line 289
    iget v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v0, p1

    .line 290
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    .line 291
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 292
    if-nez p2, :cond_0

    .line 293
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string/jumbo v1, "Trying to decode null pointer for a non-nullable type."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_1
    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 300
    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    goto :goto_0
.end method

.method public readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 481
    :goto_0
    return-object v0

    .line 480
    :cond_0
    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    .line 481
    invoke-virtual {p3, v0, v1}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;I)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    goto :goto_0
.end method

.method public readShort(I)S
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 249
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 517
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v1

    .line 518
    if-nez v1, :cond_1

    .line 519
    const/4 v0, 0x0

    .line 521
    :goto_1
    return-object v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1
.end method

.method public readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Handle;->toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    return-object v0
.end method
