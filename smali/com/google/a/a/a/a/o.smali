.class public final Lcom/google/a/a/a/a/o;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2999
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4004
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->a:[I

    iput-object v0, p0, Lcom/google/a/a/a/a/o;->a:[I

    .line 4005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/a/o;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4006
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/o;->cachedSize:I

    .line 3001
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3023
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 3024
    iget-object v1, p0, Lcom/google/a/a/a/a/o;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v0

    .line 3026
    :goto_0
    iget-object v3, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3027
    iget-object v3, p0, Lcom/google/a/a/a/a/o;->a:[I

    aget v3, v3, v0

    .line 3028
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 3026
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3031
    :cond_0
    add-int v0, v2, v1

    .line 3032
    iget-object v1, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3034
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2976
    .line 4042
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 4043
    sparse-switch v0, :sswitch_data_0

    .line 4047
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/o;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4048
    :sswitch_0
    return-object p0

    .line 4053
    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 4055
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 4057
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4058
    if-eqz v3, :cond_1

    .line 4059
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 4061
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v6

    .line 4062
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 4057
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 4064
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 4068
    :cond_2
    if-eqz v1, :cond_0

    .line 4069
    iget-object v0, p0, Lcom/google/a/a/a/a/o;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 4070
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 4071
    iput-object v5, p0, Lcom/google/a/a/a/a/o;->a:[I

    goto :goto_0

    .line 4069
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 4073
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 4074
    if-eqz v0, :cond_5

    .line 4075
    iget-object v4, p0, Lcom/google/a/a/a/a/o;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4077
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4078
    iput-object v3, p0, Lcom/google/a/a/a/a/o;->a:[I

    goto :goto_0

    .line 4084
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    .line 4085
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c(I)I

    move-result v3

    .line 4088
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->j()I

    move-result v1

    move v0, v2

    .line 4089
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->i()I

    move-result v4

    if-lez v4, :cond_6

    .line 4090
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 4092
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4096
    :cond_6
    if-eqz v0, :cond_a

    .line 4097
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e(I)V

    .line 4098
    iget-object v1, p0, Lcom/google/a/a/a/a/o;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 4099
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 4100
    if-eqz v1, :cond_7

    .line 4101
    iget-object v0, p0, Lcom/google/a/a/a/a/o;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4103
    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->i()I

    move-result v0

    if-lez v0, :cond_9

    .line 4104
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v5

    .line 4105
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 4107
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 4098
    :cond_8
    iget-object v1, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 4111
    :cond_9
    iput-object v4, p0, Lcom/google/a/a/a/a/o;->a:[I

    .line 4113
    :cond_a
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d(I)V

    goto/16 :goto_0

    .line 4043
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 4062
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 4090
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 4105
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/google/a/a/a/a/o;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 3014
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/o;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3015
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/o;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3018
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3019
    return-void
.end method
