.class public final Lcom/google/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    .line 409
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->i:I

    .line 418
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a:[B

    .line 419
    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b:I

    .line 420
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    .line 421
    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    .line 422
    return-void
.end method

.method public static a([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private f(I)[B
    .locals 4

    .prologue
    .line 610
    if-gez p1, :cond_0

    .line 611
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->b()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 614
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    if-le v0, v1, :cond_1

    .line 616
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g(I)V

    .line 618
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->a()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 621
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 623
    new-array v0, p1, [B

    .line 624
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a:[B

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    .line 626
    return-object v0

    .line 628
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->a()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private g(I)V
    .locals 2

    .prologue
    .line 639
    if-gez p1, :cond_0

    .line 640
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->b()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 643
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    if-le v0, v1, :cond_1

    .line 645
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g(I)V

    .line 647
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->a()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 650
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 652
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    return-void

    .line 654
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->a()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private k()I
    .locals 4

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v0

    .line 338
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v1

    .line 339
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v2

    .line 340
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v3

    .line 341
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 495
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    .line 496
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    .line 497
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    if-le v0, v1, :cond_0

    .line 499
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d:I

    .line 500
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d:I

    goto :goto_0
.end method

.method private m()B
    .locals 3

    .prologue
    .line 597
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    if-ne v0, v1, :cond_0

    .line 598
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->a()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a:[B

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    .line 1535
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 71
    :goto_0
    if-eqz v1, :cond_1

    .line 72
    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f:I

    .line 81
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 1535
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f:I

    .line 77
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f:I

    if-nez v0, :cond_2

    .line 79
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->d()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_2
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f:I

    if-eq v0, p1, :cond_0

    .line 95
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->e()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->i:I

    if-lt v1, v2, :cond_0

    .line 219
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->g()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(I)V

    .line 225
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d(I)V

    .line 227
    return-void
.end method

.method public final a(II)[B
    .locals 4

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 568
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->c:[B

    .line 573
    :goto_0
    return-object v0

    .line 570
    :cond_0
    new-array v0, p2, [B

    .line 571
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b:I

    add-int/2addr v1, p1

    .line 572
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 12

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->f()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 2169
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    .line 109
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 2349
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v0

    .line 2350
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v1

    .line 2351
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v2

    .line 2352
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v3

    .line 2353
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v4

    .line 2354
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v5

    .line 2355
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v6

    .line 2356
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v7

    .line 2357
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    const-wide/16 v10, 0xff

    and-long/2addr v0, v10

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g(I)V

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 3138
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3139
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->b(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(I)V

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 125
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->k()I

    .line 126
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c(I)I
    .locals 2

    .prologue
    .line 479
    if-gez p1, :cond_0

    .line 480
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->b()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 482
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v0, p1

    .line 483
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    .line 484
    if-le v0, v1, :cond_1

    .line 485
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->a()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 487
    :cond_1
    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    .line 489
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->l()V

    .line 491
    return v1
.end method

.method public final c()J
    .locals 6

    .prologue
    .line 164
    .line 3322
    const/4 v2, 0x0

    .line 3323
    const-wide/16 v0, 0x0

    .line 3324
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 3325
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v3

    .line 3326
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 3327
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 3328
    return-wide v0

    .line 3330
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 3331
    goto :goto_0

    .line 3332
    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->c()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    .line 513
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->l()V

    .line 514
    return-void
.end method

.method public final e(I)V
    .locals 4

    .prologue
    .line 580
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    if-gez p1, :cond_1

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    .line 588
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v1

    .line 190
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 194
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f(I)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final g()[B
    .locals 5

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v1

    .line 232
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 235
    new-array v0, v1, [B

    .line 236
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    .line 243
    :goto_0
    return-object v0

    .line 239
    :cond_0
    if-nez v1, :cond_1

    .line 240
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->c:[B

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final h()I
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v0

    .line 288
    if-ltz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 292
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v1

    if-ltz v1, :cond_2

    .line 293
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 295
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v1

    if-ltz v1, :cond_3

    .line 297
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 299
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 300
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v1

    if-ltz v1, :cond_4

    .line 301
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 303
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 304
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 305
    if-gez v1, :cond_0

    .line 307
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 308
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->m()B

    move-result v2

    if-gez v2, :cond_0

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_5
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->c()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final i()I
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 522
    const/4 v0, -0x1

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    .line 526
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
