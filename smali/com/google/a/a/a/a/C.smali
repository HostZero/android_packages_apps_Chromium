.class public final Lcom/google/a/a/a/a/C;
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

    .line 925
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1930
    iput-object v0, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    .line 1931
    iput-object v0, p0, Lcom/google/a/a/a/a/C;->b:[B

    .line 1932
    iput-object v0, p0, Lcom/google/a/a/a/a/C;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1933
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/C;->cachedSize:I

    .line 927
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 951
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 952
    iget-object v1, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 953
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/C;->b:[B

    if-eqz v1, :cond_1

    .line 957
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/C;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 902
    .line 1968
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1969
    sparse-switch v0, :sswitch_data_0

    .line 1973
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/C;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    :sswitch_0
    return-object p0

    .line 1979
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1983
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/C;->b:[B

    goto :goto_0

    .line 1969
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
    .line 940
    iget-object v0, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 941
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/C;->b:[B

    if-eqz v0, :cond_1

    .line 944
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/C;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 946
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 947
    return-void
.end method
