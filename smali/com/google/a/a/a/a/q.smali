.class public final Lcom/google/a/a/a/a/q;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:[Lcom/google/a/a/a/a/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2885
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3890
    invoke-static {}, Lcom/google/a/a/a/a/r;->a()[Lcom/google/a/a/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    .line 3891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/a/q;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3892
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/q;->cachedSize:I

    .line 2887
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 2912
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 2913
    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2914
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2915
    iget-object v2, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    aget-object v2, v2, v0

    .line 2916
    if-eqz v2, :cond_0

    .line 2917
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2914
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2922
    :cond_1
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2865
    .line 3930
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3931
    sparse-switch v0, :sswitch_data_0

    .line 3935
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/q;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3936
    :sswitch_0
    return-object p0

    .line 3941
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3943
    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    if-nez v0, :cond_2

    move v0, v1

    .line 3944
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/r;

    .line 3946
    if-eqz v0, :cond_1

    .line 3947
    iget-object v3, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3949
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3950
    new-instance v3, Lcom/google/a/a/a/a/r;

    invoke-direct {v3}, Lcom/google/a/a/a/a/r;-><init>()V

    aput-object v3, v2, v0

    .line 3951
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3952
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 3949
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3943
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    goto :goto_1

    .line 3955
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/r;

    invoke-direct {v3}, Lcom/google/a/a/a/a/r;-><init>()V

    aput-object v3, v2, v0

    .line 3956
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3957
    iput-object v2, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    goto :goto_0

    .line 3931
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2900
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2901
    iget-object v1, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    aget-object v1, v1, v0

    .line 2902
    if-eqz v1, :cond_0

    .line 2903
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2900
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2907
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2908
    return-void
.end method
