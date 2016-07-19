.class public final Lcom/google/a/a/a/a/I;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2525
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3530
    iput-object v0, p0, Lcom/google/a/a/a/a/I;->a:[B

    .line 3531
    iput-object v0, p0, Lcom/google/a/a/a/a/I;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3532
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/I;->cachedSize:I

    .line 2527
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2548
    iget-object v1, p0, Lcom/google/a/a/a/a/I;->a:[B

    if-eqz v1, :cond_0

    .line 2549
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/I;->a:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2552
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2505
    .line 3560
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3561
    sparse-switch v0, :sswitch_data_0

    .line 3565
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/I;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3566
    :sswitch_0
    return-object p0

    .line 3571
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/I;->a:[B

    goto :goto_0

    .line 3561
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/google/a/a/a/a/I;->a:[B

    if-eqz v0, :cond_0

    .line 2540
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/I;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 2542
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2543
    return-void
.end method
