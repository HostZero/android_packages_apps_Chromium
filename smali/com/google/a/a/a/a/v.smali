.class public final Lcom/google/a/a/a/a/v;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1133
    iput-object v0, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    .line 1134
    iput-object v0, p0, Lcom/google/a/a/a/a/v;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/v;->cachedSize:I

    .line 130
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 108
    .line 1163
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1164
    sparse-switch v0, :sswitch_data_0

    .line 1168
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/v;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    :sswitch_0
    return-object p0

    .line 1174
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 1175
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1164
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/v;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 146
    return-void
.end method
