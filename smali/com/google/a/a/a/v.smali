.class public final Lcom/google/a/a/a/v;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lcom/google/a/a/a/a/J;

.field public c:Lcom/google/a/a/a/y;

.field public d:Lcom/google/a/a/a/x;

.field public e:Lcom/google/a/a/a/A;

.field public f:Lcom/google/a/a/a/z;

.field public g:Lcom/google/a/a/a/B;

.field public h:Lcom/google/a/a/a/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1667
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2672
    iput-object v0, p0, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    .line 2673
    iput-object v0, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    .line 2674
    iput-object v0, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    .line 2675
    iput-object v0, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    .line 2676
    iput-object v0, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    .line 2677
    iput-object v0, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    .line 2678
    iput-object v0, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    .line 2679
    iput-object v0, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    .line 2680
    iput-object v0, p0, Lcom/google/a/a/a/v;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/v;->cachedSize:I

    .line 1669
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 1717
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1718
    iget-object v1, p0, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1719
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1722
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_1

    .line 1723
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1726
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    if-eqz v1, :cond_2

    .line 1727
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1730
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    if-eqz v1, :cond_3

    .line 1731
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1734
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    if-eqz v1, :cond_4

    .line 1735
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1738
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    if-eqz v1, :cond_5

    .line 1739
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1742
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    if-eqz v1, :cond_6

    .line 1743
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1746
    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    if-eqz v1, :cond_7

    .line 1747
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1750
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 996
    .line 2758
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2759
    sparse-switch v0, :sswitch_data_0

    .line 2763
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/v;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2764
    :sswitch_0
    return-object p0

    .line 2769
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2773
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 2774
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    .line 2776
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2780
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    if-nez v0, :cond_2

    .line 2781
    new-instance v0, Lcom/google/a/a/a/y;

    invoke-direct {v0}, Lcom/google/a/a/a/y;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    .line 2783
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2787
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    if-nez v0, :cond_3

    .line 2788
    new-instance v0, Lcom/google/a/a/a/x;

    invoke-direct {v0}, Lcom/google/a/a/a/x;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    .line 2790
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2794
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    if-nez v0, :cond_4

    .line 2795
    new-instance v0, Lcom/google/a/a/a/A;

    invoke-direct {v0}, Lcom/google/a/a/a/A;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    .line 2797
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2801
    :sswitch_6
    iget-object v0, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    if-nez v0, :cond_5

    .line 2802
    new-instance v0, Lcom/google/a/a/a/z;

    invoke-direct {v0}, Lcom/google/a/a/a/z;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    .line 2804
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2808
    :sswitch_7
    iget-object v0, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    if-nez v0, :cond_6

    .line 2809
    new-instance v0, Lcom/google/a/a/a/B;

    invoke-direct {v0}, Lcom/google/a/a/a/B;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    .line 2811
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2815
    :sswitch_8
    iget-object v0, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    if-nez v0, :cond_7

    .line 2816
    new-instance v0, Lcom/google/a/a/a/w;

    invoke-direct {v0}, Lcom/google/a/a/a/w;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    .line 2818
    :cond_7
    iget-object v0, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2759
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .locals 4

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1689
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_1

    .line 1692
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    if-eqz v0, :cond_2

    .line 1695
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    if-eqz v0, :cond_3

    .line 1698
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1700
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    if-eqz v0, :cond_4

    .line 1701
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1703
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    if-eqz v0, :cond_5

    .line 1704
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1706
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    if-eqz v0, :cond_6

    .line 1707
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1709
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    if-eqz v0, :cond_7

    .line 1710
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1712
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1713
    return-void
.end method
