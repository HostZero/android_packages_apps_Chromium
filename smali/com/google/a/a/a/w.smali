.class public final Lcom/google/a/a/a/w;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1540
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2545
    iput-object v0, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    .line 2546
    iput-object v0, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    .line 2547
    iput-object v0, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    .line 2548
    iput-object v0, p0, Lcom/google/a/a/a/w;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/w;->cachedSize:I

    .line 1542
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1570
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1571
    iget-object v1, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1572
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1575
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1576
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1579
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1580
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1514
    .line 2591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2592
    sparse-switch v0, :sswitch_data_0

    .line 2596
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/w;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2597
    :sswitch_0
    return-object p0

    .line 2602
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2606
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    goto :goto_0

    .line 2610
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 2592
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1557
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1560
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1563
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 1565
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1566
    return-void
.end method
