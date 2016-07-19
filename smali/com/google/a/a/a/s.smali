.class public final Lcom/google/a/a/a/s;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B

.field public c:Lcom/google/a/a/a/a/h;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 738
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1743
    iput-object v0, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    .line 1744
    iput-object v0, p0, Lcom/google/a/a/a/s;->b:[B

    .line 1745
    iput-object v0, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    .line 1746
    iput-object v0, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    .line 1747
    iput-object v0, p0, Lcom/google/a/a/a/s;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1748
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/s;->cachedSize:I

    .line 740
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 772
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 774
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/s;->b:[B

    if-eqz v1, :cond_1

    .line 778
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/s;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    if-eqz v1, :cond_2

    .line 782
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 785
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 786
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 789
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 709
    .line 1797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1798
    sparse-switch v0, :sswitch_data_0

    .line 1802
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/s;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    :sswitch_0
    return-object p0

    .line 1808
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1812
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/s;->b:[B

    goto :goto_0

    .line 1816
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    if-nez v0, :cond_1

    .line 1817
    new-instance v0, Lcom/google/a/a/a/a/h;

    invoke-direct {v0}, Lcom/google/a/a/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1823
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 1798
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
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/s;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/s;->b:[B

    if-eqz v0, :cond_1

    .line 759
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/s;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    if-eqz v0, :cond_2

    .line 762
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/s;->c:Lcom/google/a/a/a/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 765
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/s;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 767
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 768
    return-void
.end method
