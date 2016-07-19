.class public final Lcom/google/a/a/a/a/B;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile b:[Lcom/google/a/a/a/a/B;


# instance fields
.field public a:[Lcom/google/a/a/a/a/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1746
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2751
    invoke-static {}, Lcom/google/a/a/a/a/s;->a()[Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    .line 2752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/a/B;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2753
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/B;->cachedSize:I

    .line 1748
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/B;
    .locals 2

    .prologue
    .line 1732
    sget-object v0, Lcom/google/a/a/a/a/B;->b:[Lcom/google/a/a/a/a/B;

    if-nez v0, :cond_1

    .line 1733
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1735
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/B;->b:[Lcom/google/a/a/a/a/B;

    if-nez v0, :cond_0

    .line 1736
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/B;

    sput-object v0, Lcom/google/a/a/a/a/B;->b:[Lcom/google/a/a/a/a/B;

    .line 1738
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/B;->b:[Lcom/google/a/a/a/a/B;

    return-object v0

    .line 1738
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
    .line 1773
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 1774
    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1775
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1776
    iget-object v2, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    .line 1777
    if-eqz v2, :cond_0

    .line 1778
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1775
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1783
    :cond_1
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1726
    .line 2791
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2792
    sparse-switch v0, :sswitch_data_0

    .line 2796
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/B;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2797
    :sswitch_0
    return-object p0

    .line 2802
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2804
    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_2

    move v0, v1

    .line 2805
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/s;

    .line 2807
    if-eqz v0, :cond_1

    .line 2808
    iget-object v3, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2810
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2811
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 2812
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2813
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 2810
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2804
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    goto :goto_1

    .line 2816
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 2817
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2818
    iput-object v2, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    goto :goto_0

    .line 2792
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1761
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1762
    iget-object v1, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    aget-object v1, v1, v0

    .line 1763
    if-eqz v1, :cond_0

    .line 1764
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1761
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1768
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1769
    return-void
.end method
