.class public final Lcom/google/a/a/a/a;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidChannel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1191
    iput-object v0, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    .line 1192
    iput-object v0, p0, Lcom/google/a/a/a/a;->b:[B

    .line 1193
    iput-object v0, p0, Lcom/google/a/a/a/a;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a;->cachedSize:I

    .line 188
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a;->b:[B

    if-eqz v1, :cond_1

    .line 218
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 163
    .line 1229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1230
    sparse-switch v0, :sswitch_data_0

    .line 1234
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1235
    :sswitch_0
    return-object p0

    .line 1240
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 1244
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a;->b:[B

    goto :goto_0

    .line 1230
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
    .line 201
    iget-object v0, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a;->b:[B

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 207
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 208
    return-void
.end method
