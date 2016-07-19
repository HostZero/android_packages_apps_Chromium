.class public final Lcom/google/a/a/a/a/p;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B

.field public c:Lcom/google/a/a/a/a/g;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1394
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2399
    iput-object v0, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    .line 2400
    iput-object v0, p0, Lcom/google/a/a/a/a/p;->b:[B

    .line 2401
    iput-object v0, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    .line 2402
    iput-object v0, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    .line 2403
    iput-object v0, p0, Lcom/google/a/a/a/a/p;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2404
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/p;->cachedSize:I

    .line 1396
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1428
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1429
    iget-object v1, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1430
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/p;->b:[B

    if-eqz v1, :cond_1

    .line 1434
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/p;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1437
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    if-eqz v1, :cond_2

    .line 1438
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1441
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1442
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1445
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1361
    .line 2453
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2454
    sparse-switch v0, :sswitch_data_0

    .line 2458
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/p;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2459
    :sswitch_0
    return-object p0

    .line 2464
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2468
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/p;->b:[B

    goto :goto_0

    .line 2472
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    if-nez v0, :cond_1

    .line 2473
    new-instance v0, Lcom/google/a/a/a/a/g;

    invoke-direct {v0}, Lcom/google/a/a/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    .line 2475
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2479
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 2480
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2483
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 2480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1412
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/p;->b:[B

    if-eqz v0, :cond_1

    .line 1415
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/p;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    if-eqz v0, :cond_2

    .line 1418
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1420
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1421
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 1423
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1424
    return-void
.end method
