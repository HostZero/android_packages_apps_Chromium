.class public final Lcom/google/a/a/a/A;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/s;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1216
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2221
    iput-object v0, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    .line 2222
    iput-object v0, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    .line 2223
    iput-object v0, p0, Lcom/google/a/a/a/A;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2224
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/A;->cachedSize:I

    .line 1218
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1242
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1243
    iget-object v1, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_0

    .line 1244
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1248
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1251
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1193
    .line 2259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2260
    sparse-switch v0, :sswitch_data_0

    .line 2264
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/A;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2265
    :sswitch_0
    return-object p0

    .line 2270
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_1

    .line 2271
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    .line 2273
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2277
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2260
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_0

    .line 1232
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1235
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 1237
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1238
    return-void
.end method
