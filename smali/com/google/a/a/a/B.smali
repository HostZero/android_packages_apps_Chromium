.class public final Lcom/google/a/a/a/B;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:[B

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1437
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2442
    iput-object v0, p0, Lcom/google/a/a/a/B;->a:[B

    .line 2443
    iput-object v0, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    .line 2444
    iput-object v0, p0, Lcom/google/a/a/a/B;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/B;->cachedSize:I

    .line 1439
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1463
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1464
    iget-object v1, p0, Lcom/google/a/a/a/B;->a:[B

    if-eqz v1, :cond_0

    .line 1465
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/B;->a:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1468
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1469
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1472
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1414
    .line 2480
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2481
    sparse-switch v0, :sswitch_data_0

    .line 2485
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/B;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2486
    :sswitch_0
    return-object p0

    .line 2491
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/B;->a:[B

    goto :goto_0

    .line 2495
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2481
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/google/a/a/a/B;->a:[B

    if-eqz v0, :cond_0

    .line 1453
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/B;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1456
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/B;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 1458
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1459
    return-void
.end method
