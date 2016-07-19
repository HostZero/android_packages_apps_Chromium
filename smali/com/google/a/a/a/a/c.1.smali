.class public final Lcom/google/a/a/a/a/c;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClient.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1424
    iput-object v0, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    .line 1425
    iput-object v0, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    .line 1426
    iput-object v0, p0, Lcom/google/a/a/a/a/c;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1427
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/c;->cachedSize:I

    .line 421
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 445
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 446
    iget-object v1, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 451
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 396
    .line 1462
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1463
    sparse-switch v0, :sswitch_data_0

    .line 1467
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/c;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    :sswitch_0
    return-object p0

    .line 1473
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1477
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 1463
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 438
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 440
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 441
    return-void
.end method
