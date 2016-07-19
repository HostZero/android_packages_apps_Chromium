.class public final Lcom/google/a/a/a/a/l;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3649
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4654
    iput-object v0, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    .line 4655
    iput-object v0, p0, Lcom/google/a/a/a/a/l;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4656
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/l;->cachedSize:I

    .line 3651
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 3671
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3672
    iget-object v1, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 3673
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3676
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 3629
    .line 4684
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 4685
    sparse-switch v0, :sswitch_data_0

    .line 4689
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/l;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4690
    :sswitch_0
    return-object p0

    .line 4695
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    goto :goto_0

    .line 4685
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 3664
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/l;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 3666
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3667
    return-void
.end method
