.class public final Lcom/google/a/a/a/a/D;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:[Lcom/google/a/a/a/a/B;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2640
    invoke-static {}, Lcom/google/a/a/a/a/B;->a()[Lcom/google/a/a/a/a/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    .line 2641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/a/D;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/D;->cachedSize:I

    .line 1637
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 1662
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 1663
    iget-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1664
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1665
    iget-object v2, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    aget-object v2, v2, v0

    .line 1666
    if-eqz v2, :cond_0

    .line 1667
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1672
    :cond_1
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1615
    .line 2680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2681
    sparse-switch v0, :sswitch_data_0

    .line 2685
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/D;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2686
    :sswitch_0
    return-object p0

    .line 2691
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2693
    iget-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    if-nez v0, :cond_2

    move v0, v1

    .line 2694
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/B;

    .line 2696
    if-eqz v0, :cond_1

    .line 2697
    iget-object v3, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2699
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2700
    new-instance v3, Lcom/google/a/a/a/a/B;

    invoke-direct {v3}, Lcom/google/a/a/a/a/B;-><init>()V

    aput-object v3, v2, v0

    .line 2701
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2702
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 2699
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2693
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    goto :goto_1

    .line 2705
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/B;

    invoke-direct {v3}, Lcom/google/a/a/a/a/B;-><init>()V

    aput-object v3, v2, v0

    .line 2706
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2707
    iput-object v2, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    goto :goto_0

    .line 2681
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1650
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1651
    iget-object v1, p0, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    aget-object v1, v1, v0

    .line 1652
    if-eqz v1, :cond_0

    .line 1653
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1650
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1657
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1658
    return-void
.end method
