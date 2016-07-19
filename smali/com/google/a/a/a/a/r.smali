.class public final Lcom/google/a/a/a/a/r;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile f:[Lcom/google/a/a/a/a/r;


# instance fields
.field public a:Lcom/google/a/a/a/a/s;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Boolean;

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 673
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1678
    iput-object v0, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    .line 1679
    iput-object v0, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    .line 1680
    iput-object v0, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    .line 1681
    iput-object v0, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    .line 1682
    iput-object v0, p0, Lcom/google/a/a/a/a/r;->e:[B

    .line 1683
    iput-object v0, p0, Lcom/google/a/a/a/a/r;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1684
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/r;->cachedSize:I

    .line 675
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/r;
    .locals 2

    .prologue
    .line 647
    sget-object v0, Lcom/google/a/a/a/a/r;->f:[Lcom/google/a/a/a/a/r;

    if-nez v0, :cond_1

    .line 648
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/r;->f:[Lcom/google/a/a/a/a/r;

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/r;

    sput-object v0, Lcom/google/a/a/a/a/r;->f:[Lcom/google/a/a/a/a/r;

    .line 653
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/r;->f:[Lcom/google/a/a/a/a/r;

    return-object v0

    .line 653
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 711
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 712
    iget-object v1, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_0

    .line 713
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 717
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 721
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/r;->e:[B

    if-eqz v1, :cond_3

    .line 725
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/r;->e:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 729
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 732
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 641
    .line 1740
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1741
    sparse-switch v0, :sswitch_data_0

    .line 1745
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/r;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    :sswitch_0
    return-object p0

    .line 1751
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_1

    .line 1752
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    .line 1754
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1758
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 1762
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1766
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/r;->e:[B

    goto :goto_0

    .line 1770
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 1741
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x30 -> :sswitch_5
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_0

    .line 692
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 695
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 698
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->e:[B

    if-eqz v0, :cond_3

    .line 701
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/r;->e:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 704
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 706
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 707
    return-void
.end method
