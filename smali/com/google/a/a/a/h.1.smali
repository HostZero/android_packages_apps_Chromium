.class public final Lcom/google/a/a/a/h;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2078
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3083
    iput-object v0, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    .line 3084
    iput-object v0, p0, Lcom/google/a/a/a/h;->b:[B

    .line 3085
    iput-object v0, p0, Lcom/google/a/a/a/h;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3086
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/h;->cachedSize:I

    .line 2080
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2104
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2105
    iget-object v1, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 2106
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2109
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/h;->b:[B

    if-eqz v1, :cond_1

    .line 2110
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/h;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2113
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2055
    .line 3121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3122
    sparse-switch v0, :sswitch_data_0

    .line 3126
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/h;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3127
    :sswitch_0
    return-object p0

    .line 3132
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 3133
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    .line 3135
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3139
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/h;->b:[B

    goto :goto_0

    .line 3122
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
    .line 2093
    iget-object v0, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 2094
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/h;->b:[B

    if-eqz v0, :cond_1

    .line 2097
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/h;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 2099
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2100
    return-void
.end method
