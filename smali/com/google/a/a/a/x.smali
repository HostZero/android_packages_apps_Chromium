.class public final Lcom/google/a/a/a/x;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:[B

.field public b:Lcom/google/a/a/a/a/r;

.field public c:Lcom/google/a/a/a/a/s;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1086
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2091
    iput-object v0, p0, Lcom/google/a/a/a/x;->a:[B

    .line 2092
    iput-object v0, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    .line 2093
    iput-object v0, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    .line 2094
    iput-object v0, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    .line 2095
    iput-object v0, p0, Lcom/google/a/a/a/x;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2096
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/x;->cachedSize:I

    .line 1088
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1120
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1121
    iget-object v1, p0, Lcom/google/a/a/a/x;->a:[B

    if-eqz v1, :cond_0

    .line 1122
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/x;->a:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    if-eqz v1, :cond_1

    .line 1126
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_2

    .line 1130
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1133
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1134
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1137
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1057
    .line 2145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2146
    sparse-switch v0, :sswitch_data_0

    .line 2150
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/x;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    :sswitch_0
    return-object p0

    .line 2156
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/x;->a:[B

    goto :goto_0

    .line 2160
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    if-nez v0, :cond_1

    .line 2161
    new-instance v0, Lcom/google/a/a/a/a/r;

    invoke-direct {v0}, Lcom/google/a/a/a/a/r;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    .line 2163
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2167
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_2

    .line 2168
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    .line 2170
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2174
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2146
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/a/a/a/x;->a:[B

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/x;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    if-eqz v0, :cond_1

    .line 1107
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/a/r;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_2

    .line 1110
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1113
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/x;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 1115
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1116
    return-void
.end method
