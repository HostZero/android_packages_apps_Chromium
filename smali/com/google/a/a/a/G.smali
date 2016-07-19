.class public final Lcom/google/a/a/a/G;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoJavaClient.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:Lcom/google/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 610
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1615
    iput-object v0, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    .line 1616
    iput-object v0, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    .line 1617
    iput-object v0, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    .line 1618
    iput-object v0, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    .line 1619
    iput-object v0, p0, Lcom/google/a/a/a/G;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1620
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/G;->cachedSize:I

    .line 612
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 644
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 646
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 650
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 654
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    if-eqz v1, :cond_3

    .line 658
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 581
    .line 1669
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1670
    sparse-switch v0, :sswitch_data_0

    .line 1674
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/G;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    :sswitch_0
    return-object p0

    .line 1680
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1684
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1688
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 1692
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    if-nez v0, :cond_1

    .line 1693
    new-instance v0, Lcom/google/a/a/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1670
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 631
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 634
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    if-eqz v0, :cond_3

    .line 637
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 639
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 640
    return-void
.end method
