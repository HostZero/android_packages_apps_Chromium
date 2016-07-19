.class public final Lcom/google/a/a/a/e;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidListenerProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/e;


# instance fields
.field public a:Lcom/google/a/a/a/f;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1145
    iput-object v0, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    .line 1146
    iput-object v0, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    .line 1147
    iput-object v0, p0, Lcom/google/a/a/a/e;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1148
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/e;->cachedSize:I

    .line 142
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/e;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/google/a/a/a/e;->c:[Lcom/google/a/a/a/e;

    if-nez v0, :cond_1

    .line 124
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/e;->c:[Lcom/google/a/a/a/e;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/e;

    sput-object v0, Lcom/google/a/a/a/e;->c:[Lcom/google/a/a/a/e;

    .line 129
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    sget-object v0, Lcom/google/a/a/a/e;->c:[Lcom/google/a/a/a/e;

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    if-eqz v1, :cond_0

    .line 168
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 117
    .line 1183
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1184
    sparse-switch v0, :sswitch_data_0

    .line 1188
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/e;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    :sswitch_0
    return-object p0

    .line 1194
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    if-nez v0, :cond_1

    .line 1195
    new-instance v0, Lcom/google/a/a/a/f;

    invoke-direct {v0}, Lcom/google/a/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1201
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1184
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/e;->a:Lcom/google/a/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/e;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 162
    return-void
.end method
