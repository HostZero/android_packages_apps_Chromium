.class public final Lcom/google/a/a/a/a/h;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Integer;

.field public j:Lcom/google/a/a/a/a/u;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3414
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4419
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    .line 4420
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    .line 4421
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    .line 4422
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    .line 4423
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    .line 4424
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    .line 4425
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    .line 4426
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    .line 4427
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    .line 4428
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    .line 4429
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    .line 4430
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    .line 4431
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    .line 4432
    iput-object v0, p0, Lcom/google/a/a/a/a/h;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/h;->cachedSize:I

    .line 3416
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 3484
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3485
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 3486
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3489
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3490
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3493
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3494
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3497
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 3498
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3501
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3502
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3505
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3506
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3509
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 3510
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3513
    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 3514
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3517
    :cond_7
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 3518
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3521
    :cond_8
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    if-eqz v1, :cond_9

    .line 3522
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3525
    :cond_9
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 3526
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3529
    :cond_a
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 3530
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3533
    :cond_b
    iget-object v1, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 3534
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3537
    :cond_c
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3358
    .line 4545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 4546
    sparse-switch v0, :sswitch_data_0

    .line 4550
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/h;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4551
    :sswitch_0
    return-object p0

    .line 4556
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 4557
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    .line 4559
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4563
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4567
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4571
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 4575
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 4579
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 4583
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 4587
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 4591
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 4595
    :sswitch_a
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    if-nez v0, :cond_2

    .line 4596
    new-instance v0, Lcom/google/a/a/a/a/u;

    invoke-direct {v0}, Lcom/google/a/a/a/a/u;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    .line 4598
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4602
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4606
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4610
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4546
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 3441
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3443
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3444
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3446
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3447
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3449
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3450
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3452
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3453
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3455
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3456
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3458
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 3459
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3461
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 3462
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 3464
    :cond_7
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 3465
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3467
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    if-eqz v0, :cond_9

    .line 3468
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3470
    :cond_9
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 3471
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 3473
    :cond_a
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 3474
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3476
    :cond_b
    iget-object v0, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 3477
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 3479
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3480
    return-void
.end method
