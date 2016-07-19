.class public final Lcom/google/a/a/a/j;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;

.field public b:Lcom/google/a/a/a/E;

.field public c:Lcom/google/a/a/a/k;

.field public d:[Lcom/google/a/a/a/C;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2320
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3325
    iput-object v1, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    .line 3326
    iput-object v1, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    .line 3327
    iput-object v1, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    .line 3328
    invoke-static {}, Lcom/google/a/a/a/C;->a()[Lcom/google/a/a/a/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    .line 3329
    iput-object v1, p0, Lcom/google/a/a/a/j;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3330
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/j;->cachedSize:I

    .line 2322
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 2359
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2360
    iget-object v1, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 2361
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2364
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    if-eqz v1, :cond_1

    .line 2365
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2368
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    if-eqz v1, :cond_2

    .line 2369
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2372
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 2373
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2374
    iget-object v2, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    aget-object v2, v2, v0

    .line 2375
    if-eqz v2, :cond_3

    .line 2376
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2373
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2381
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2158
    .line 3389
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3390
    sparse-switch v0, :sswitch_data_0

    .line 3394
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/j;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3395
    :sswitch_0
    return-object p0

    .line 3400
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 3401
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    .line 3403
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3407
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    if-nez v0, :cond_2

    .line 3408
    new-instance v0, Lcom/google/a/a/a/E;

    invoke-direct {v0}, Lcom/google/a/a/a/E;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    .line 3410
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3414
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    if-nez v0, :cond_3

    .line 3415
    new-instance v0, Lcom/google/a/a/a/k;

    invoke-direct {v0}, Lcom/google/a/a/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    .line 3417
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3421
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3423
    iget-object v0, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    if-nez v0, :cond_5

    move v0, v1

    .line 3424
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/C;

    .line 3426
    if-eqz v0, :cond_4

    .line 3427
    iget-object v3, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3429
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3430
    new-instance v3, Lcom/google/a/a/a/C;

    invoke-direct {v3}, Lcom/google/a/a/a/C;-><init>()V

    aput-object v3, v2, v0

    .line 3431
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3432
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 3429
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3423
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v0, v0

    goto :goto_1

    .line 3435
    :cond_6
    new-instance v3, Lcom/google/a/a/a/C;

    invoke-direct {v3}, Lcom/google/a/a/a/C;-><init>()V

    aput-object v3, v2, v0

    .line 3436
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3437
    iput-object v2, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    goto :goto_0

    .line 3390
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 2338
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    if-eqz v0, :cond_1

    .line 2341
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2343
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    if-eqz v0, :cond_2

    .line 2344
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2346
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2347
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2348
    iget-object v1, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    aget-object v1, v1, v0

    .line 2349
    if-eqz v1, :cond_3

    .line 2350
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2347
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2354
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2355
    return-void
.end method
