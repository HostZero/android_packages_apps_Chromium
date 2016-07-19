.class public final Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public static a(ID)I
    .locals 1

    .prologue
    .line 576
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/4 v0, 0x0

    .line 348
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v1, v0

    .line 353
    :goto_0
    if-ge v1, v3, :cond_7

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_7

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :goto_1
    if-ge v1, v3, :cond_6

    .line 359
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 360
    if-ge v4, v7, :cond_0

    .line 361
    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v2, v4

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1377
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1379
    :goto_2
    if-ge v1, v4, :cond_4

    .line 1380
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1381
    if-ge v5, v7, :cond_2

    .line 1382
    rsub-int/lit8 v5, v5, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v0, v5

    .line 1379
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1384
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 1386
    const v6, 0xd800

    if-gt v6, v5, :cond_1

    const v6, 0xdfff

    if-gt v5, v6, :cond_1

    .line 1388
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1389
    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_3

    .line 1390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1392
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 363
    :cond_4
    add-int/2addr v0, v2

    .line 368
    :goto_4
    if-ge v0, v3, :cond_5

    .line 370
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UTF-8 length does not fit in int: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v4, v0

    const-wide v6, 0x100000000L

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/CharSequence;[BII)I
    .locals 8

    .prologue
    const/16 v7, 0x80

    .line 465
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 467
    const/4 v0, 0x0

    .line 468
    add-int v4, p2, p3

    .line 471
    :goto_0
    if-ge v0, v3, :cond_0

    add-int v1, v0, p2

    if-ge v1, v4, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_0

    .line 472
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    if-ne v0, v3, :cond_1

    .line 475
    add-int v0, p2, v3

    .line 506
    :goto_1
    return v0

    .line 477
    :cond_1
    add-int v2, p2, v0

    .line 478
    :goto_2
    if-ge v0, v3, :cond_9

    .line 479
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 480
    if-ge v5, v7, :cond_2

    if-ge v2, v4, :cond_2

    .line 481
    add-int/lit8 v1, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 478
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2

    .line 482
    :cond_2
    const/16 v1, 0x800

    if-ge v5, v1, :cond_3

    add-int/lit8 v1, v4, -0x2

    if-gt v2, v1, :cond_3

    .line 483
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    or-int/lit16 v1, v1, 0x3c0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 484
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    goto :goto_3

    .line 485
    :cond_3
    const v1, 0xd800

    if-lt v5, v1, :cond_4

    const v1, 0xdfff

    if-ge v1, v5, :cond_5

    :cond_4
    add-int/lit8 v1, v4, -0x3

    if-gt v2, v1, :cond_5

    .line 487
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 488
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 489
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    goto :goto_3

    .line 490
    :cond_5
    add-int/lit8 v1, v4, -0x4

    if-gt v2, v1, :cond_8

    .line 493
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v1, v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-nez v6, :cond_7

    .line 495
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_7
    invoke-static {v5, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 498
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 499
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 500
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 501
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    goto/16 :goto_3

    .line 503
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed writing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v2

    .line 506
    goto/16 :goto_1
.end method

.method public static a([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 424
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 427
    invoke-virtual {v1, v0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 428
    throw v1

    .line 431
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static b(IF)I
    .locals 1

    .prologue
    .line 584
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static b(II)I
    .locals 2

    .prologue
    .line 608
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 3

    .prologue
    .line 592
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1781
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(J)I

    move-result v1

    .line 592
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 2

    .prologue
    .line 653
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 1843
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 653
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 644
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1834
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1835
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 644
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 1

    .prologue
    .line 635
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b(I[B)I
    .locals 3

    .prologue
    .line 671
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1860
    array-length v1, p1

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    .line 671
    add-int/2addr v0, v1

    return v0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 437
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    .line 438
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 439
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 440
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    .line 442
    ushr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 443
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 444
    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_2

    const v3, 0xdfff

    if-ge v3, v2, :cond_3

    .line 446
    :cond_2
    ushr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 448
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 451
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_5

    .line 453
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 456
    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    ushr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 458
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 462
    :cond_6
    return-void
.end method

.method public static c(II)I
    .locals 1

    .prologue
    .line 626
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static c(IJ)I
    .locals 3

    .prologue
    .line 600
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1789
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(J)I

    move-result v1

    .line 600
    add-int/2addr v0, v1

    return v0
.end method

.method public static c(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 3

    .prologue
    .line 662
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1851
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 1852
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 662
    add-int/2addr v0, v1

    return v0
.end method

.method public static d(II)I
    .locals 2

    .prologue
    .line 688
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1876
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    .line 688
    add-int/2addr v0, v1

    return v0
.end method

.method public static d(IJ)I
    .locals 1

    .prologue
    .line 617
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static e(II)I
    .locals 2

    .prologue
    .line 697
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1884
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    .line 697
    add-int/2addr v0, v1

    return v0
.end method

.method public static e(IJ)I
    .locals 1

    .prologue
    .line 715
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static f(II)I
    .locals 1

    .prologue
    .line 706
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static f(IJ)I
    .locals 5

    .prologue
    .line 731
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1916
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(J)I

    move-result v1

    .line 731
    add-int/2addr v0, v1

    return v0
.end method

.method public static f(J)I
    .locals 2

    .prologue
    .line 781
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(J)I

    move-result v0

    return v0
.end method

.method public static g(I)I
    .locals 1

    .prologue
    .line 797
    if-ltz p0, :cond_0

    .line 798
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v0

    .line 801
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static g(II)I
    .locals 2

    .prologue
    .line 723
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->n(I)I

    move-result v0

    .line 1908
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->p(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    .line 723
    add-int/2addr v0, v1

    return v0
.end method

.method public static g(J)I
    .locals 2

    .prologue
    .line 789
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(J)I

    move-result v0

    return v0
.end method

.method public static h(I)I
    .locals 1

    .prologue
    .line 876
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v0

    return v0
.end method

.method public static h(J)I
    .locals 2

    .prologue
    .line 916
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(J)I

    move-result v0

    return v0
.end method

.method public static i(I)I
    .locals 1

    .prologue
    .line 884
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v0

    return v0
.end method

.method private i(J)V
    .locals 5

    .prologue
    .line 1048
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1049
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->m(I)V

    .line 1050
    return-void

    .line 1052
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->m(I)V

    .line 1053
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static j(I)I
    .locals 1

    .prologue
    .line 908
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->p(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v0

    return v0
.end method

.method private static j(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1060
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1069
    :goto_0
    return v0

    .line 1061
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1062
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1063
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1064
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1065
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1066
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1067
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1068
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1069
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private k(J)V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1085
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1088
    return-void
.end method

.method public static l(I)I
    .locals 1

    .prologue
    .line 1038
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1042
    :goto_0
    return v0

    .line 1039
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1040
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1041
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1042
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static l(J)J
    .locals 4

    .prologue
    .line 1119
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private m(I)V
    .locals 3

    .prologue
    .line 986
    int-to-byte v0, p1

    .line 1976
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1978
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1981
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 987
    return-void
.end method

.method private static n(I)I
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v0

    return v0
.end method

.method private o(I)V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1075
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1078
    return-void
.end method

.method private static p(I)I
    .locals 2

    .prologue
    .line 1104
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 937
    .line 1926
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 937
    if-eqz v0, :cond_0

    .line 938
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_0
    return-void
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 260
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(J)V

    .line 261
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 265
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->o(I)V

    .line 266
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 280
    if-ltz p1, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->i(J)V

    goto :goto_0
.end method

.method public final a(IF)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(F)V

    .line 104
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)V

    .line 125
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 1275
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->i(J)V

    .line 118
    return-void
.end method

.method public final a(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 168
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Z)V

    .line 146
    return-void
.end method

.method public final a(I[B)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b([B)V

    .line 175
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->i(J)V

    .line 271
    return-void
.end method

.method public final a(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 519
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 520
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v0

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    .line 311
    if-ne v0, v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 316
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 317
    new-instance v2, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v2
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 332
    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 333
    throw v1

    .line 319
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 321
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 322
    iget-object v3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    sub-int v1, v2, v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 324
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 327
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 300
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->m(I)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->o(I)V

    .line 296
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->i(J)V

    .line 276
    return-void
.end method

.method public final b([B)V
    .locals 1

    .prologue
    .line 524
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 525
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c([B)V

    .line 526
    return-void
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 538
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(J)V

    .line 291
    return-void
.end method

.method public final c([B)V
    .locals 3

    .prologue
    .line 991
    array-length v0, p1

    .line 1997
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 1998
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 2001
    :cond_0
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 546
    return-void
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(J)V

    .line 556
    return-void
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->o(I)V

    .line 551
    return-void
.end method

.method public final e(J)V
    .locals 3

    .prologue
    .line 565
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->i(J)V

    .line 566
    return-void
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 560
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->p(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 561
    return-void
.end method

.method public final h(II)V
    .locals 1

    .prologue
    .line 1008
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/WireFormatNano;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 1009
    return-void
.end method

.method public final k(I)V
    .locals 1

    .prologue
    .line 1022
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1023
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->m(I)V

    .line 1024
    return-void

    .line 1026
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->m(I)V

    .line 1027
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
