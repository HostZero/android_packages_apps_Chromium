.class public final Lcom/google/a/a/a/a/k;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1230
    iput-object v0, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    .line 1231
    iput-object v0, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    .line 1232
    iput-object v0, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    .line 1233
    iput-object v0, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    .line 1234
    iput-object v0, p0, Lcom/google/a/a/a/a/k;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1235
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/k;->cachedSize:I

    .line 227
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 259
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 265
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 269
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 273
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 196
    .line 1284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1285
    sparse-switch v0, :sswitch_data_0

    .line 1289
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/k;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    :sswitch_0
    return-object p0

    .line 1295
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 1296
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1302
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    goto :goto_0

    .line 1306
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    goto :goto_0

    .line 1310
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    goto :goto_0

    .line 1285
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/k;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 246
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 249
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 252
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 254
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 255
    return-void
.end method
