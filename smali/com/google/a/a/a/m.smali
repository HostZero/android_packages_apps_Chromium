.class public final Lcom/google/a/a/a/m;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lcom/google/a/a/a/a/J;

.field public c:Lcom/google/a/a/a/p;

.field public d:Lcom/google/a/a/a/q;

.field public e:Lcom/google/a/a/a/n;

.field public f:Lcom/google/a/a/a/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1401
    iput-object v0, p0, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    .line 1402
    iput-object v0, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    .line 1403
    iput-object v0, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    .line 1404
    iput-object v0, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    .line 1405
    iput-object v0, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    .line 1406
    iput-object v0, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    .line 1407
    iput-object v0, p0, Lcom/google/a/a/a/m;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1408
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/m;->cachedSize:I

    .line 398
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 438
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_1

    .line 444
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    if-eqz v1, :cond_2

    .line 448
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    if-eqz v1, :cond_3

    .line 452
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    if-eqz v1, :cond_4

    .line 456
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    if-eqz v1, :cond_5

    .line 460
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 8
    .line 1471
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1472
    sparse-switch v0, :sswitch_data_0

    .line 1476
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/m;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    :sswitch_0
    return-object p0

    .line 1482
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1486
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 1487
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1493
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    if-nez v0, :cond_2

    .line 1494
    new-instance v0, Lcom/google/a/a/a/p;

    invoke-direct {v0}, Lcom/google/a/a/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    .line 1496
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1500
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    if-nez v0, :cond_3

    .line 1501
    new-instance v0, Lcom/google/a/a/a/q;

    invoke-direct {v0}, Lcom/google/a/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    .line 1503
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1507
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    if-nez v0, :cond_4

    .line 1508
    new-instance v0, Lcom/google/a/a/a/n;

    invoke-direct {v0}, Lcom/google/a/a/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    .line 1510
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1514
    :sswitch_6
    iget-object v0, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    if-nez v0, :cond_5

    .line 1515
    new-instance v0, Lcom/google/a/a/a/o;

    invoke-direct {v0}, Lcom/google/a/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    .line 1517
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1472
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    if-eqz v0, :cond_2

    .line 422
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    if-eqz v0, :cond_3

    .line 425
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    if-eqz v0, :cond_4

    .line 428
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    if-eqz v0, :cond_5

    .line 431
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 433
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 434
    return-void
.end method
