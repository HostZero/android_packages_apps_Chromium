.class public final Lcom/google/a/a/a/a/i;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/v;

.field public b:[B

.field public c:Lcom/google/a/a/a/a/C;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1040
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2045
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    .line 2046
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->b:[B

    .line 2047
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    .line 2048
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    .line 2049
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    .line 2050
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    .line 2051
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    .line 2052
    iput-object v0, p0, Lcom/google/a/a/a/a/i;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2053
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/i;->cachedSize:I

    .line 1042
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 1086
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1087
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    if-eqz v1, :cond_0

    .line 1088
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->b:[B

    if-eqz v1, :cond_1

    .line 1092
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    if-eqz v1, :cond_2

    .line 1096
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1100
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1104
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1108
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1112
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 1002
    .line 2123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2124
    sparse-switch v0, :sswitch_data_0

    .line 2128
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/i;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2129
    :sswitch_0
    return-object p0

    .line 2134
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    if-nez v0, :cond_1

    .line 2135
    new-instance v0, Lcom/google/a/a/a/a/v;

    invoke-direct {v0}, Lcom/google/a/a/a/a/v;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    .line 2137
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->b:[B

    goto :goto_0

    .line 2145
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    if-nez v0, :cond_2

    .line 2146
    new-instance v0, Lcom/google/a/a/a/a/C;

    invoke-direct {v0}, Lcom/google/a/a/a/a/C;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    .line 2148
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2152
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2156
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    goto :goto_0

    .line 2160
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    goto :goto_0

    .line 2164
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 2124
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    if-eqz v0, :cond_0

    .line 1061
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->a:Lcom/google/a/a/a/a/v;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->b:[B

    if-eqz v0, :cond_1

    .line 1064
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    if-eqz v0, :cond_2

    .line 1067
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->c:Lcom/google/a/a/a/a/C;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 1070
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 1072
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1073
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 1075
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1076
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 1078
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1079
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/a/i;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 1081
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1082
    return-void
.end method
