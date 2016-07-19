.class public final Lcom/google/a/a/a/a/e;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClient.java"


# instance fields
.field public a:[B

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1124
    iput-object v0, p0, Lcom/google/a/a/a/a/e;->a:[B

    .line 1125
    iput-object v0, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    .line 1126
    iput-object v0, p0, Lcom/google/a/a/a/a/e;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1127
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/e;->cachedSize:I

    .line 121
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/google/a/a/a/a/e;->a:[B

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/e;->a:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 96
    .line 1162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1163
    sparse-switch v0, :sswitch_data_0

    .line 1167
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/e;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    :sswitch_0
    return-object p0

    .line 1173
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/e;->a:[B

    goto :goto_0

    .line 1177
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/a/a/a/a/e;->a:[B

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/e;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/e;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 140
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 141
    return-void
.end method
