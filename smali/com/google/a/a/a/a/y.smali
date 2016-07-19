.class public final Lcom/google/a/a/a/a/y;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/a/y;


# instance fields
.field public a:Lcom/google/a/a/a/a/s;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 816
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1821
    iput-object v0, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    .line 1822
    iput-object v0, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    .line 1823
    iput-object v0, p0, Lcom/google/a/a/a/a/y;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1824
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/y;->cachedSize:I

    .line 818
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/y;
    .locals 2

    .prologue
    .line 799
    sget-object v0, Lcom/google/a/a/a/a/y;->c:[Lcom/google/a/a/a/a/y;

    if-nez v0, :cond_1

    .line 800
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/y;->c:[Lcom/google/a/a/a/a/y;

    if-nez v0, :cond_0

    .line 803
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/y;

    sput-object v0, Lcom/google/a/a/a/a/y;->c:[Lcom/google/a/a/a/a/y;

    .line 805
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/y;->c:[Lcom/google/a/a/a/a/y;

    return-object v0

    .line 805
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
    .locals 3

    .prologue
    .line 842
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 843
    iget-object v1, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_0

    .line 844
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 848
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 789
    .line 1859
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1860
    sparse-switch v0, :sswitch_data_0

    .line 1864
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/y;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    :sswitch_0
    return-object p0

    .line 1870
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_1

    .line 1871
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1877
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 1878
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1881
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1860
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/y;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 835
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/y;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 837
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 838
    return-void
.end method
