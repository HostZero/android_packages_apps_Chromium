.class public final Lcom/google/a/a/a/f;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidListenerProtocol.java"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:[Lcom/google/a/a/a/a/s;

.field public c:[B

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1474
    iput-object v1, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    .line 1475
    invoke-static {}, Lcom/google/a/a/a/a/s;->a()[Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    .line 1476
    iput-object v1, p0, Lcom/google/a/a/a/f;->c:[B

    .line 1477
    iput-object v1, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    .line 1478
    iput-object v1, p0, Lcom/google/a/a/a/f;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1479
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/f;->cachedSize:I

    .line 471
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 508
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 510
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 514
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    .line 516
    if-eqz v2, :cond_1

    .line 517
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 514
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 522
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/f;->c:[B

    if-eqz v1, :cond_4

    .line 523
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/f;->c:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 526
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 527
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 530
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 440
    .line 1538
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1539
    sparse-switch v0, :sswitch_data_0

    .line 1543
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/f;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1544
    :sswitch_0
    return-object p0

    .line 1549
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 1553
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1555
    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_2

    move v0, v1

    .line 1556
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/s;

    .line 1558
    if-eqz v0, :cond_1

    .line 1559
    iget-object v3, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1561
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1562
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1563
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1564
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1561
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1555
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    goto :goto_1

    .line 1567
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1568
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1569
    iput-object v2, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    goto :goto_0

    .line 1573
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->c:[B

    goto :goto_0

    .line 1577
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 1539
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 490
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    aget-object v1, v1, v0

    .line 492
    if-eqz v1, :cond_1

    .line 493
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 490
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/f;->c:[B

    if-eqz v0, :cond_3

    .line 498
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/f;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 501
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 503
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 504
    return-void
.end method
