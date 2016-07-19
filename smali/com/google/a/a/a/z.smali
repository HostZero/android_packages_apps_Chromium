.class public final Lcom/google/a/a/a/z;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/s;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1322
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2327
    iput-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    .line 2328
    iput-object v0, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    .line 2329
    iput-object v0, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    .line 2330
    iput-object v0, p0, Lcom/google/a/a/a/z;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2331
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/z;->cachedSize:I

    .line 1324
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1352
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1353
    iget-object v1, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_0

    .line 1354
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1357
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1358
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1361
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1362
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1365
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1296
    .line 2373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2374
    sparse-switch v0, :sswitch_data_0

    .line 2378
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/z;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2379
    :sswitch_0
    return-object p0

    .line 2384
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_1

    .line 2385
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    .line 2387
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2391
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2395
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    goto :goto_0

    .line 2374
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_0

    .line 1339
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1342
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1345
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 1347
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1348
    return-void
.end method
