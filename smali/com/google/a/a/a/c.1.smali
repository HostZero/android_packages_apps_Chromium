.class public final Lcom/google/a/a/a/c;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidListenerProtocol.java"


# instance fields
.field public a:[Lcom/google/a/a/a/a/s;

.field public b:[Lcom/google/a/a/a/d;

.field public c:[B

.field public d:Ljava/lang/Integer;

.field public e:[Lcom/google/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1254
    invoke-static {}, Lcom/google/a/a/a/a/s;->a()[Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    .line 1255
    invoke-static {}, Lcom/google/a/a/a/d;->a()[Lcom/google/a/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    .line 1256
    iput-object v1, p0, Lcom/google/a/a/a/c;->c:[B

    .line 1257
    iput-object v1, p0, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    .line 1258
    invoke-static {}, Lcom/google/a/a/a/e;->a()[Lcom/google/a/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    .line 1259
    iput-object v1, p0, Lcom/google/a/a/a/c;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1260
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/c;->cachedSize:I

    .line 251
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 303
    iget-object v2, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 304
    :goto_0
    iget-object v3, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    .line 306
    if-eqz v3, :cond_0

    .line 307
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 313
    :goto_1
    iget-object v3, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 314
    iget-object v3, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    aget-object v3, v3, v0

    .line 315
    if-eqz v3, :cond_3

    .line 316
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 313
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 321
    :cond_5
    iget-object v2, p0, Lcom/google/a/a/a/c;->c:[B

    if-eqz v2, :cond_6

    .line 322
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/a/a/a/c;->c:[B

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 325
    :cond_6
    iget-object v2, p0, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 326
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 329
    :cond_7
    iget-object v2, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 330
    :goto_2
    iget-object v2, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 331
    iget-object v2, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    aget-object v2, v2, v1

    .line 332
    if-eqz v2, :cond_8

    .line 333
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 330
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    :cond_9
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8
    .line 1346
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1347
    sparse-switch v0, :sswitch_data_0

    .line 1351
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/c;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    :sswitch_0
    return-object p0

    .line 1357
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1359
    iget-object v0, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_2

    move v0, v1

    .line 1360
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/s;

    .line 1362
    if-eqz v0, :cond_1

    .line 1363
    iget-object v3, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1365
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1366
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1367
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1368
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    goto :goto_1

    .line 1371
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1372
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1373
    iput-object v2, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    goto :goto_0

    .line 1377
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1379
    iget-object v0, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    if-nez v0, :cond_5

    move v0, v1

    .line 1380
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/d;

    .line 1382
    if-eqz v0, :cond_4

    .line 1383
    iget-object v3, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1385
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1386
    new-instance v3, Lcom/google/a/a/a/d;

    invoke-direct {v3}, Lcom/google/a/a/a/d;-><init>()V

    aput-object v3, v2, v0

    .line 1387
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1388
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1379
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v0, v0

    goto :goto_3

    .line 1391
    :cond_6
    new-instance v3, Lcom/google/a/a/a/d;

    invoke-direct {v3}, Lcom/google/a/a/a/d;-><init>()V

    aput-object v3, v2, v0

    .line 1392
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1393
    iput-object v2, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    goto/16 :goto_0

    .line 1397
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/c;->c:[B

    goto/16 :goto_0

    .line 1401
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1405
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1407
    iget-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    if-nez v0, :cond_8

    move v0, v1

    .line 1408
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/e;

    .line 1410
    if-eqz v0, :cond_7

    .line 1411
    iget-object v3, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1413
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1414
    new-instance v3, Lcom/google/a/a/a/e;

    invoke-direct {v3}, Lcom/google/a/a/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 1415
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1416
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1413
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1407
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v0, v0

    goto :goto_5

    .line 1419
    :cond_9
    new-instance v3, Lcom/google/a/a/a/e;

    invoke-direct {v3}, Lcom/google/a/a/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 1420
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1421
    iput-object v2, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    goto/16 :goto_0

    .line 1347
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    .line 270
    if-eqz v2, :cond_0

    .line 271
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 276
    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    aget-object v2, v2, v0

    .line 278
    if-eqz v2, :cond_2

    .line 279
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 276
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/c;->c:[B

    if-eqz v0, :cond_4

    .line 284
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/c;->c:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 287
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 290
    :goto_2
    iget-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 291
    iget-object v0, p0, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    aget-object v0, v0, v1

    .line 292
    if-eqz v0, :cond_6

    .line 293
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 290
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 298
    return-void
.end method
