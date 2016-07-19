.class public final Lcom/google/a/a/a/F;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoJavaClient.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Lcom/google/a/a/a/D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1312
    iput-object v0, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    .line 1313
    iput-object v0, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    .line 1314
    iput-object v0, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    .line 1315
    iput-object v0, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    .line 1316
    iput-object v0, p0, Lcom/google/a/a/a/F;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1317
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/F;->cachedSize:I

    .line 309
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 341
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 347
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 351
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    if-eqz v1, :cond_3

    .line 355
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 278
    .line 1366
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1367
    sparse-switch v0, :sswitch_data_0

    .line 1371
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/F;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    :sswitch_0
    return-object p0

    .line 1377
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1381
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1385
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1389
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    if-nez v0, :cond_1

    .line 1390
    new-instance v0, Lcom/google/a/a/a/D;

    invoke-direct {v0}, Lcom/google/a/a/a/D;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1367
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 328
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    if-eqz v0, :cond_3

    .line 334
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 336
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 337
    return-void
.end method
