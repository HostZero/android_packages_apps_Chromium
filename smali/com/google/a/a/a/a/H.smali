.class public final Lcom/google/a/a/a/a/H;
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

    .line 357
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1362
    iput-object v0, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    .line 1363
    iput-object v0, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    .line 1364
    iput-object v0, p0, Lcom/google/a/a/a/a/H;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1365
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/H;->cachedSize:I

    .line 359
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 383
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 389
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 329
    .line 1400
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1401
    sparse-switch v0, :sswitch_data_0

    .line 1405
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/H;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    :sswitch_0
    return-object p0

    .line 1411
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 1412
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1416
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1422
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    goto :goto_0

    .line 1401
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 378
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 379
    return-void
.end method
