.class public final Lcom/google/a/a/a/i;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1863
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2868
    iput-object v0, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    .line 2869
    iput-object v0, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    .line 2870
    iput-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    .line 2871
    iput-object v0, p0, Lcom/google/a/a/a/i;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2872
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/i;->cachedSize:I

    .line 1865
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 1893
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1894
    iget-object v1, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 1895
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1898
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1899
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1902
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1903
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1906
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 1837
    .line 2914
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2915
    sparse-switch v0, :sswitch_data_0

    .line 2919
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/i;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2920
    :sswitch_0
    return-object p0

    .line 2925
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 2926
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    .line 2928
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2932
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    goto :goto_0

    .line 2936
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2915
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 1880
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1883
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 1885
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 1886
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 1888
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1889
    return-void
.end method
