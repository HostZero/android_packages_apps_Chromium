.class public final Lcom/google/a/a/a/a/m;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3741
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4746
    iput-object v0, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    .line 4747
    iput-object v0, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    .line 4748
    iput-object v0, p0, Lcom/google/a/a/a/a/m;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4749
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/m;->cachedSize:I

    .line 3743
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 3767
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3768
    iget-object v1, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3769
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3772
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3773
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3776
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3714
    .line 4784
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 4785
    sparse-switch v0, :sswitch_data_0

    .line 4789
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/m;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4790
    :sswitch_0
    return-object p0

    .line 4795
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 4796
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 4799
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4805
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    goto :goto_0

    .line 4785
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 4796
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2710 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3757
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3759
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3760
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 3762
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3763
    return-void
.end method
