.class public final Lcom/google/a/a/a/a/d;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClient.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/e;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1224
    iput-object v0, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    .line 1225
    iput-object v0, p0, Lcom/google/a/a/a/a/d;->b:[B

    .line 1226
    iput-object v0, p0, Lcom/google/a/a/a/a/d;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1227
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/d;->cachedSize:I

    .line 221
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/d;->b:[B

    if-eqz v1, :cond_1

    .line 251
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/d;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 196
    .line 1262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1263
    sparse-switch v0, :sswitch_data_0

    .line 1267
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/d;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    :sswitch_0
    return-object p0

    .line 1273
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    if-nez v0, :cond_1

    .line 1274
    new-instance v0, Lcom/google/a/a/a/a/e;

    invoke-direct {v0}, Lcom/google/a/a/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1280
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/d;->b:[B

    goto :goto_0

    .line 1263
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/d;->b:[B

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/d;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 240
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 241
    return-void
.end method
