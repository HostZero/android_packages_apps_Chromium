.class public final Lcom/google/a/a/a/g;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidListenerProtocol.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1627
    iput-object v0, p0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    .line 1628
    iput-object v0, p0, Lcom/google/a/a/a/g;->b:[B

    .line 1629
    iput-object v0, p0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    .line 1630
    iput-object v0, p0, Lcom/google/a/a/a/g;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1631
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/g;->cachedSize:I

    .line 624
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 652
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 653
    iget-object v1, p0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 654
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/g;->b:[B

    if-eqz v1, :cond_1

    .line 658
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/g;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 662
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 596
    .line 1673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1674
    sparse-switch v0, :sswitch_data_0

    .line 1678
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/g;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    :sswitch_0
    return-object p0

    .line 1684
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1688
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/g;->b:[B

    goto :goto_0

    .line 1692
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 1674
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/g;->b:[B

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/g;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 645
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 647
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 648
    return-void
.end method
