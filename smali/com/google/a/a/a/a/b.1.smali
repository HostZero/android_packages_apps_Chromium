.class public final Lcom/google/a/a/a/a/b;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClient.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1033
    iput-object v0, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    .line 1034
    iput-object v0, p0, Lcom/google/a/a/a/a/b;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1035
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/b;->cachedSize:I

    .line 30
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    .line 1063
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1064
    sparse-switch v0, :sswitch_data_0

    .line 1068
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/b;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    :sswitch_0
    return-object p0

    .line 1074
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    if-nez v0, :cond_1

    .line 1075
    new-instance v0, Lcom/google/a/a/a/a/r;

    invoke-direct {v0}, Lcom/google/a/a/a/a/r;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1064
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
    .line 42
    iget-object v0, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/b;->a:Lcom/google/a/a/a/a/r;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 46
    return-void
.end method
