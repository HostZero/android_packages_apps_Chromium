.class public final Lcom/google/a/a/a/a/F;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/v;

.field public b:[B

.field public c:Lcom/google/a/a/a/a/C;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2172
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3177
    iput-object v0, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    .line 3178
    iput-object v0, p0, Lcom/google/a/a/a/a/F;->b:[B

    .line 3179
    iput-object v0, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    .line 3180
    iput-object v0, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    .line 3181
    iput-object v0, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    .line 3182
    iput-object v0, p0, Lcom/google/a/a/a/a/F;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3183
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/F;->cachedSize:I

    .line 2174
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 2210
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2211
    iget-object v1, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    if-eqz v1, :cond_0

    .line 2212
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2215
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/F;->b:[B

    if-eqz v1, :cond_1

    .line 2216
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/F;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2219
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    if-eqz v1, :cond_2

    .line 2220
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2223
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 2224
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2227
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2228
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2231
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 2140
    .line 3239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3240
    sparse-switch v0, :sswitch_data_0

    .line 3244
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/F;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3245
    :sswitch_0
    return-object p0

    .line 3250
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    if-nez v0, :cond_1

    .line 3251
    new-instance v0, Lcom/google/a/a/a/a/v;

    invoke-direct {v0}, Lcom/google/a/a/a/a/v;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3257
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/F;->b:[B

    goto :goto_0

    .line 3261
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    if-nez v0, :cond_2

    .line 3262
    new-instance v0, Lcom/google/a/a/a/a/C;

    invoke-direct {v0}, Lcom/google/a/a/a/a/C;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    .line 3264
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3268
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    goto :goto_0

    .line 3272
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    goto :goto_0

    .line 3240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    if-eqz v0, :cond_0

    .line 2191
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/F;->a:Lcom/google/a/a/a/a/v;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->b:[B

    if-eqz v0, :cond_1

    .line 2194
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/F;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    if-eqz v0, :cond_2

    .line 2197
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/F;->c:Lcom/google/a/a/a/a/C;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2199
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 2200
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/F;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 2202
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2203
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/F;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 2205
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2206
    return-void
.end method
