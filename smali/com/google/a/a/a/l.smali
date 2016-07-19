.class public final Lcom/google/a/a/a/l;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/j;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2479
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3484
    iput-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    .line 3485
    iput-object v0, p0, Lcom/google/a/a/a/l;->b:[B

    .line 3486
    iput-object v0, p0, Lcom/google/a/a/a/l;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3487
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/l;->cachedSize:I

    .line 2481
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2505
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2506
    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    if-eqz v1, :cond_0

    .line 2507
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2510
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/l;->b:[B

    if-eqz v1, :cond_1

    .line 2511
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/l;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2514
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2456
    .line 3522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3523
    sparse-switch v0, :sswitch_data_0

    .line 3527
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/l;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3528
    :sswitch_0
    return-object p0

    .line 3533
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    if-nez v0, :cond_1

    .line 3534
    new-instance v0, Lcom/google/a/a/a/j;

    invoke-direct {v0}, Lcom/google/a/a/a/j;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    .line 3536
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3540
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/l;->b:[B

    goto :goto_0

    .line 3523
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    if-eqz v0, :cond_0

    .line 2495
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2497
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/l;->b:[B

    if-eqz v0, :cond_1

    .line 2498
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/l;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 2500
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2501
    return-void
.end method
