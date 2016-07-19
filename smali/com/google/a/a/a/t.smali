.class public final Lcom/google/a/a/a/t;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 644
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1649
    iput-object v0, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    .line 1650
    iput-object v0, p0, Lcom/google/a/a/a/t;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1651
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/t;->cachedSize:I

    .line 646
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 666
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 667
    iget-object v1, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 668
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 671
    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 624
    .line 1679
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1680
    sparse-switch v0, :sswitch_data_0

    .line 1684
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/t;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    :sswitch_0
    return-object p0

    .line 1690
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 1680
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/t;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 661
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 662
    return-void
.end method
