.class public final Lcom/google/a/a/a/a/g;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1569
    iput-object v0, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    .line 1570
    iput-object v0, p0, Lcom/google/a/a/a/a/g;->b:[B

    .line 1571
    iput-object v0, p0, Lcom/google/a/a/a/a/g;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1572
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/g;->cachedSize:I

    .line 566
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 590
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 592
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/g;->b:[B

    if-eqz v1, :cond_1

    .line 596
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/g;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 599
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 541
    .line 1607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1608
    sparse-switch v0, :sswitch_data_0

    .line 1612
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/g;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    :sswitch_0
    return-object p0

    .line 1618
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1622
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/g;->b:[B

    goto :goto_0

    .line 1608
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/g;->b:[B

    if-eqz v0, :cond_1

    .line 583
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/g;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 585
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 586
    return-void
.end method
