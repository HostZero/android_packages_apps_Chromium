.class public final Lcom/google/a/a/a/a/f;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClient.java"


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1329
    iput-object v0, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    .line 1330
    iput-object v0, p0, Lcom/google/a/a/a/a/f;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1331
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/f;->cachedSize:I

    .line 326
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 299
    .line 1359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1360
    sparse-switch v0, :sswitch_data_0

    .line 1364
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/f;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    :sswitch_0
    return-object p0

    .line 1370
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 1371
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1375
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1360
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1371
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
    .line 338
    iget-object v0, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 341
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 342
    return-void
.end method
