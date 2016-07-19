.class public final Lcom/google/a/a/a/k;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B

.field public c:Ljava/lang/Long;

.field public d:Lcom/google/a/a/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2190
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3195
    iput-object v0, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    .line 3196
    iput-object v0, p0, Lcom/google/a/a/a/k;->b:[B

    .line 3197
    iput-object v0, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    .line 3198
    iput-object v0, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    .line 3199
    iput-object v0, p0, Lcom/google/a/a/a/k;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3200
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/k;->cachedSize:I

    .line 2192
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 2224
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2225
    iget-object v1, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2226
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2229
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/k;->b:[B

    if-eqz v1, :cond_1

    .line 2230
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/k;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2233
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 2234
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2237
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    if-eqz v1, :cond_3

    .line 2238
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2241
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 2161
    .line 3249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3250
    sparse-switch v0, :sswitch_data_0

    .line 3254
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/k;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3255
    :sswitch_0
    return-object p0

    .line 3260
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/k;->b:[B

    goto :goto_0

    .line 3268
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    goto :goto_0

    .line 3272
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    if-nez v0, :cond_1

    .line 3273
    new-instance v0, Lcom/google/a/a/a/a/h;

    invoke-direct {v0}, Lcom/google/a/a/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    .line 3275
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2208
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/k;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 2210
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/k;->b:[B

    if-eqz v0, :cond_1

    .line 2211
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/k;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2214
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/k;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 2216
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    if-eqz v0, :cond_3

    .line 2217
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/k;->d:Lcom/google/a/a/a/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2219
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2220
    return-void
.end method
