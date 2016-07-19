.class public final Lcom/google/a/a/a/u;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 559
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1564
    iput-object v0, p0, Lcom/google/a/a/a/u;->a:[B

    .line 1565
    iput-object v0, p0, Lcom/google/a/a/a/u;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1566
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/u;->cachedSize:I

    .line 561
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 581
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 582
    iget-object v1, p0, Lcom/google/a/a/a/u;->a:[B

    if-eqz v1, :cond_0

    .line 583
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/u;->a:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 586
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 539
    .line 1594
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1595
    sparse-switch v0, :sswitch_data_0

    .line 1599
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/u;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    :sswitch_0
    return-object p0

    .line 1605
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/u;->a:[B

    goto :goto_0

    .line 1595
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
    .line 573
    iget-object v0, p0, Lcom/google/a/a/a/u;->a:[B

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/u;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 576
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 577
    return-void
.end method
