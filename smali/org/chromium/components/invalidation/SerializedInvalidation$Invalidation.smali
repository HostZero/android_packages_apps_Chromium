.class public final Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SerializedInvalidation.java"


# instance fields
.field public objectId:Ljava/lang/String;

.field public objectSource:Ljava/lang/Integer;

.field public payload:Ljava/lang/String;

.field public version:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->clear()Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;

    .line 39
    return-void
.end method


# virtual methods
.method public final clear()Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    .line 44
    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    .line 45
    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->cachedSize:I

    .line 48
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 72
    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_2
    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 85
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_3
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;
    .locals 2

    .prologue
    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 97
    sparse-switch v0, :sswitch_data_0

    .line 101
    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :sswitch_0
    return-object p0

    .line 107
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    goto :goto_0

    .line 111
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    goto :goto_0

    .line 115
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    goto :goto_0

    .line 119
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 63
    :cond_2
    iget-object v0, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x4

    iget-object v1, p0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 66
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 67
    return-void
.end method
