.class public final Lcom/google/a/a/a/H;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoJavaClient.java"


# instance fields
.field public a:[Lcom/google/a/a/a/a/s;

.field public b:Lcom/google/a/a/a/a/C;

.field public c:[Lcom/google/a/a/a/a/y;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1442
    invoke-static {}, Lcom/google/a/a/a/a/s;->a()[Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    .line 1443
    iput-object v1, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    .line 1444
    invoke-static {}, Lcom/google/a/a/a/a/y;->a()[Lcom/google/a/a/a/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    .line 1445
    iput-object v1, p0, Lcom/google/a/a/a/H;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1446
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/H;->cachedSize:I

    .line 439
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 477
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 478
    iget-object v2, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 479
    :goto_0
    iget-object v3, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 480
    iget-object v3, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    .line 481
    if-eqz v3, :cond_0

    .line 482
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    if-eqz v2, :cond_3

    .line 488
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 491
    :cond_3
    iget-object v2, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 492
    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 493
    iget-object v2, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    aget-object v2, v2, v1

    .line 494
    if-eqz v2, :cond_4

    .line 495
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 492
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 500
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 411
    .line 1508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1509
    sparse-switch v0, :sswitch_data_0

    .line 1513
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/H;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    :sswitch_0
    return-object p0

    .line 1519
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1521
    iget-object v0, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_2

    move v0, v1

    .line 1522
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/s;

    .line 1524
    if-eqz v0, :cond_1

    .line 1525
    iget-object v3, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1527
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1528
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1529
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1530
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    goto :goto_1

    .line 1533
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1534
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1535
    iput-object v2, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    goto :goto_0

    .line 1539
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    if-nez v0, :cond_4

    .line 1540
    new-instance v0, Lcom/google/a/a/a/a/C;

    invoke-direct {v0}, Lcom/google/a/a/a/a/C;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    .line 1542
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1546
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1548
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    if-nez v0, :cond_6

    move v0, v1

    .line 1549
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/y;

    .line 1551
    if-eqz v0, :cond_5

    .line 1552
    iget-object v3, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1554
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1555
    new-instance v3, Lcom/google/a/a/a/a/y;

    invoke-direct {v3}, Lcom/google/a/a/a/a/y;-><init>()V

    aput-object v3, v2, v0

    .line 1556
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1557
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1554
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1548
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    goto :goto_3

    .line 1560
    :cond_7
    new-instance v3, Lcom/google/a/a/a/a/y;

    invoke-direct {v3}, Lcom/google/a/a/a/a/y;-><init>()V

    aput-object v3, v2, v0

    .line 1561
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1562
    iput-object v2, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    goto/16 :goto_0

    .line 1509
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 454
    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    .line 456
    if-eqz v2, :cond_0

    .line 457
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    if-eqz v0, :cond_2

    .line 462
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 465
    :goto_1
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 466
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    aget-object v0, v0, v1

    .line 467
    if-eqz v0, :cond_3

    .line 468
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 465
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 473
    return-void
.end method
