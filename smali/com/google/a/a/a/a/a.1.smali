.class public final Lcom/google/a/a/a/a/a;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoChannelCommon.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1105
    iput-object v0, p0, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    .line 1106
    iput-object v0, p0, Lcom/google/a/a/a/a/a;->b:[B

    .line 1107
    iput-object v0, p0, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    .line 1108
    iput-object v0, p0, Lcom/google/a/a/a/a/a;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1109
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/a;->cachedSize:I

    .line 102
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/a;->b:[B

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/a;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 140
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 69
    .line 1151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1152
    sparse-switch v0, :sswitch_data_0

    .line 1156
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/a;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    :sswitch_0
    return-object p0

    .line 1162
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 1163
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1167
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1173
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a;->b:[B

    goto :goto_0

    .line 1177
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 1152
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch

    .line 1163
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/a;->b:[B

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/a;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 125
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 126
    return-void
.end method
