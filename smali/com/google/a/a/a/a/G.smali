.class public final Lcom/google/a/a/a/a/G;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/F;

.field public b:Lcom/google/a/a/a/a/I;

.field public c:Lcom/google/a/a/a/a/q;

.field public d:Lcom/google/a/a/a/a/A;

.field public e:Lcom/google/a/a/a/a/E;

.field public f:Lcom/google/a/a/a/a/l;

.field public g:Lcom/google/a/a/a/a/o;

.field public h:Lcom/google/a/a/a/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2332
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3337
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    .line 3338
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    .line 3339
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    .line 3340
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    .line 3341
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    .line 3342
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    .line 3343
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    .line 3344
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    .line 3345
    iput-object v0, p0, Lcom/google/a/a/a/a/G;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3346
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/G;->cachedSize:I

    .line 2334
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2382
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2383
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    if-eqz v1, :cond_0

    .line 2384
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2387
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    if-eqz v1, :cond_1

    .line 2388
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2391
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    if-eqz v1, :cond_2

    .line 2392
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2395
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    if-eqz v1, :cond_3

    .line 2396
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2399
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    if-eqz v1, :cond_4

    .line 2400
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2403
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    if-eqz v1, :cond_5

    .line 2404
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2407
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    if-eqz v1, :cond_6

    .line 2408
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2411
    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    if-eqz v1, :cond_7

    .line 2412
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2415
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2291
    .line 3423
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3424
    sparse-switch v0, :sswitch_data_0

    .line 3428
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/G;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3429
    :sswitch_0
    return-object p0

    .line 3434
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    if-nez v0, :cond_1

    .line 3435
    new-instance v0, Lcom/google/a/a/a/a/F;

    invoke-direct {v0}, Lcom/google/a/a/a/a/F;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    .line 3437
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3441
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    if-nez v0, :cond_2

    .line 3442
    new-instance v0, Lcom/google/a/a/a/a/I;

    invoke-direct {v0}, Lcom/google/a/a/a/a/I;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    .line 3444
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3448
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    if-nez v0, :cond_3

    .line 3449
    new-instance v0, Lcom/google/a/a/a/a/q;

    invoke-direct {v0}, Lcom/google/a/a/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    .line 3451
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3455
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    if-nez v0, :cond_4

    .line 3456
    new-instance v0, Lcom/google/a/a/a/a/A;

    invoke-direct {v0}, Lcom/google/a/a/a/a/A;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    .line 3458
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3462
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    if-nez v0, :cond_5

    .line 3463
    new-instance v0, Lcom/google/a/a/a/a/E;

    invoke-direct {v0}, Lcom/google/a/a/a/a/E;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    .line 3465
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3469
    :sswitch_6
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    if-nez v0, :cond_6

    .line 3470
    new-instance v0, Lcom/google/a/a/a/a/l;

    invoke-direct {v0}, Lcom/google/a/a/a/a/l;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    .line 3472
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3476
    :sswitch_7
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    if-nez v0, :cond_7

    .line 3477
    new-instance v0, Lcom/google/a/a/a/a/o;

    invoke-direct {v0}, Lcom/google/a/a/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    .line 3479
    :cond_7
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3483
    :sswitch_8
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    if-nez v0, :cond_8

    .line 3484
    new-instance v0, Lcom/google/a/a/a/a/m;

    invoke-direct {v0}, Lcom/google/a/a/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    .line 3486
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3424
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    if-eqz v0, :cond_0

    .line 2354
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->a:Lcom/google/a/a/a/a/F;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    if-eqz v0, :cond_1

    .line 2357
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->b:Lcom/google/a/a/a/a/I;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2359
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    if-eqz v0, :cond_2

    .line 2360
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->c:Lcom/google/a/a/a/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2362
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    if-eqz v0, :cond_3

    .line 2363
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->d:Lcom/google/a/a/a/a/A;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2365
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    if-eqz v0, :cond_4

    .line 2366
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->e:Lcom/google/a/a/a/a/E;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2368
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    if-eqz v0, :cond_5

    .line 2369
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->f:Lcom/google/a/a/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2371
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    if-eqz v0, :cond_6

    .line 2372
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->g:Lcom/google/a/a/a/a/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2374
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    if-eqz v0, :cond_7

    .line 2375
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/a/a/a/a/G;->h:Lcom/google/a/a/a/a/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2377
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2378
    return-void
.end method
