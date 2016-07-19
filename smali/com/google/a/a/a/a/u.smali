.class public final Lcom/google/a/a/a/a/u;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lcom/google/a/a/a/a/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3255
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4260
    iput-object v1, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    .line 4261
    invoke-static {}, Lcom/google/a/a/a/a/w;->a()[Lcom/google/a/a/a/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    .line 4262
    iput-object v1, p0, Lcom/google/a/a/a/a/u;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4263
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/u;->cachedSize:I

    .line 3257
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 3286
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3287
    iget-object v1, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3288
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3291
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 3292
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3293
    iget-object v2, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    aget-object v2, v2, v0

    .line 3294
    if-eqz v2, :cond_1

    .line 3295
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3300
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3232
    .line 4308
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 4309
    sparse-switch v0, :sswitch_data_0

    .line 4313
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/u;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4314
    :sswitch_0
    return-object p0

    .line 4319
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4323
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4325
    iget-object v0, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    if-nez v0, :cond_2

    move v0, v1

    .line 4326
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/w;

    .line 4328
    if-eqz v0, :cond_1

    .line 4329
    iget-object v3, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4331
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4332
    new-instance v3, Lcom/google/a/a/a/a/w;

    invoke-direct {v3}, Lcom/google/a/a/a/a/w;-><init>()V

    aput-object v3, v2, v0

    .line 4333
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4334
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 4331
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4325
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v0, v0

    goto :goto_1

    .line 4337
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/w;

    invoke-direct {v3}, Lcom/google/a/a/a/a/w;-><init>()V

    aput-object v3, v2, v0

    .line 4338
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4339
    iput-object v2, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    goto :goto_0

    .line 4309
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3271
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3273
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3274
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3275
    iget-object v1, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    aget-object v1, v1, v0

    .line 3276
    if-eqz v1, :cond_1

    .line 3277
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3281
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3282
    return-void
.end method
