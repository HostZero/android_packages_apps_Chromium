.class Lcom/google/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/google/protobuf/nano/Extension;
.source "Extension.java"


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method private d(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 599
    .line 600
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 601
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    packed-switch v2, :pswitch_data_0

    .line 659
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected non-packable type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :pswitch_1
    shl-int/lit8 v0, v0, 0x2

    .line 661
    :goto_0
    :pswitch_2
    return v0

    .line 614
    :pswitch_3
    shl-int/lit8 v0, v0, 0x3

    .line 615
    goto :goto_0

    :pswitch_4
    move v2, v1

    .line 617
    :goto_1
    if-ge v2, v0, :cond_0

    .line 618
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 617
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    move v0, v1

    .line 621
    goto :goto_0

    :pswitch_5
    move v2, v1

    .line 623
    :goto_2
    if-ge v2, v0, :cond_1

    .line 624
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->j(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 623
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_1
    move v0, v1

    .line 627
    goto :goto_0

    :pswitch_6
    move v2, v1

    .line 629
    :goto_3
    if-ge v2, v0, :cond_2

    .line 630
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 629
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_2
    move v0, v1

    .line 633
    goto :goto_0

    :pswitch_7
    move v2, v1

    .line 635
    :goto_4
    if-ge v2, v0, :cond_3

    .line 636
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(J)I

    move-result v3

    add-int/2addr v3, v1

    .line 635
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_3
    move v0, v1

    .line 639
    goto :goto_0

    :pswitch_8
    move v2, v1

    .line 641
    :goto_5
    if-ge v2, v0, :cond_4

    .line 642
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(J)I

    move-result v3

    add-int/2addr v3, v1

    .line 641
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_5

    :cond_4
    move v0, v1

    .line 645
    goto :goto_0

    :pswitch_9
    move v2, v1

    .line 647
    :goto_6
    if-ge v2, v0, :cond_5

    .line 648
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(J)I

    move-result v3

    add-int/2addr v3, v1

    .line 647
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_6

    :cond_5
    move v0, v1

    .line 651
    goto :goto_0

    :pswitch_a
    move v2, v1

    .line 653
    :goto_7
    if-ge v2, v0, :cond_6

    .line 654
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->i(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 653
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_7

    :cond_6
    move v0, v1

    .line 657
    goto/16 :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 666
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->d:I

    if-ne v0, v1, :cond_0

    .line 668
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/Extension;->b(Ljava/lang/Object;)I

    move-result v0

    .line 674
    :goto_0
    return v0

    .line 669
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->e:I

    if-ne v0, v1, :cond_1

    .line 671
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->d(Ljava/lang/Object;)I

    move-result v0

    .line 672
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 674
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 676
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected repeated extension tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", unequal to both non-packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 424
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 425
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    packed-switch v0, :pswitch_data_0

    .line 491
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 427
    :pswitch_1
    :try_start_1
    check-cast p1, Ljava/lang/Double;

    .line 428
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(D)V

    .line 497
    :goto_0
    return-void

    .line 431
    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    .line 432
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(F)V

    goto :goto_0

    .line 435
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .line 436
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(J)V

    goto :goto_0

    .line 439
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    .line 440
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(J)V

    goto :goto_0

    .line 443
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 444
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)V

    goto :goto_0

    .line 447
    :pswitch_6
    check-cast p1, Ljava/lang/Long;

    .line 448
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(J)V

    goto :goto_0

    .line 451
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    .line 452
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    goto :goto_0

    .line 455
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    .line 456
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Z)V

    goto :goto_0

    .line 459
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 460
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_a
    check-cast p1, [B

    .line 464
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b([B)V

    goto :goto_0

    .line 467
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 468
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)V

    goto :goto_0

    .line 471
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    .line 472
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V

    goto :goto_0

    .line 475
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .line 476
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(I)V

    goto :goto_0

    .line 479
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 480
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(J)V

    goto :goto_0

    .line 483
    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    .line 484
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(I)V

    goto/16 :goto_0

    .line 487
    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    .line 488
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected final c(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 684
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(I)I

    move-result v0

    .line 685
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    packed-switch v1, :pswitch_data_0

    .line 737
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :pswitch_1
    check-cast p1, Ljava/lang/Double;

    .line 688
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ID)I

    move-result v0

    .line 735
    :goto_0
    return v0

    .line 690
    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    .line 691
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v0

    goto :goto_0

    .line 693
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .line 694
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v0

    goto :goto_0

    .line 696
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    .line 697
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v0

    goto :goto_0

    .line 699
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 700
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v0

    goto :goto_0

    .line 702
    :pswitch_6
    check-cast p1, Ljava/lang/Long;

    .line 703
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v0

    goto :goto_0

    .line 705
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    .line 706
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)I

    move-result v0

    goto :goto_0

    .line 708
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    .line 709
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v0

    goto :goto_0

    .line 711
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 712
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 714
    :pswitch_a
    check-cast p1, [B

    .line 715
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v0

    goto :goto_0

    .line 717
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 718
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v0

    goto :goto_0

    .line 720
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    .line 721
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(II)I

    move-result v0

    goto :goto_0

    .line 723
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .line 724
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(II)I

    move-result v0

    goto :goto_0

    .line 727
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 728
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v0

    goto/16 :goto_0

    .line 731
    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    .line 732
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(II)I

    move-result v0

    goto/16 :goto_0

    .line 734
    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    .line 735
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v0

    goto/16 :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected final c(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 501
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->d:I

    if-ne v1, v2, :cond_1

    .line 503
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->c(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 591
    :cond_0
    return-void

    .line 504
    :cond_1
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->e:I

    if-ne v1, v2, :cond_2

    .line 507
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 508
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->d(Ljava/lang/Object;)I

    move-result v2

    .line 511
    :try_start_0
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    invoke-virtual {p2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 512
    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 513
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    packed-switch v2, :pswitch_data_0

    .line 585
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unpackable type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :catch_0
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 515
    :goto_0
    :pswitch_1
    if-ge v0, v1, :cond_0

    .line 516
    :try_start_1
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Z)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :goto_1
    :pswitch_2
    if-ge v0, v1, :cond_0

    .line 521
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    :goto_2
    :pswitch_3
    if-ge v0, v1, :cond_0

    .line 526
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(I)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 530
    :goto_3
    :pswitch_4
    if-ge v0, v1, :cond_0

    .line 531
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(F)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 535
    :goto_4
    :pswitch_5
    if-ge v0, v1, :cond_0

    .line 536
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(J)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 540
    :goto_5
    :pswitch_6
    if-ge v0, v1, :cond_0

    .line 541
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(J)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 545
    :goto_6
    :pswitch_7
    if-ge v0, v1, :cond_0

    .line 546
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(D)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 550
    :goto_7
    :pswitch_8
    if-ge v0, v1, :cond_0

    .line 551
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 555
    :goto_8
    :pswitch_9
    if-ge v0, v1, :cond_0

    .line 556
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(I)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 560
    :goto_9
    :pswitch_a
    if-ge v0, v1, :cond_0

    .line 561
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)V

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 565
    :goto_a
    :pswitch_b
    if-ge v0, v1, :cond_0

    .line 566
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(J)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 570
    :goto_b
    :pswitch_c
    if-ge v0, v1, :cond_0

    .line 571
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(J)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 575
    :goto_c
    :pswitch_d
    if-ge v0, v1, :cond_0

    .line 576
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(J)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 580
    :goto_d
    :pswitch_e
    if-ge v0, v1, :cond_0

    .line 581
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 592
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected repeated extension tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", unequal to both non-packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
