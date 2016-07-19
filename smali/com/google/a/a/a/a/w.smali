.class public final Lcom/google/a/a/a/a/w;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/a/w;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3155
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4160
    iput-object v0, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    .line 4161
    iput-object v0, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    .line 4162
    iput-object v0, p0, Lcom/google/a/a/a/a/w;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4163
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/w;->cachedSize:I

    .line 3157
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/w;
    .locals 2

    .prologue
    .line 3138
    sget-object v0, Lcom/google/a/a/a/a/w;->c:[Lcom/google/a/a/a/a/w;

    if-nez v0, :cond_1

    .line 3139
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3141
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/w;->c:[Lcom/google/a/a/a/a/w;

    if-nez v0, :cond_0

    .line 3142
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/w;

    sput-object v0, Lcom/google/a/a/a/a/w;->c:[Lcom/google/a/a/a/a/w;

    .line 3144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3146
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/w;->c:[Lcom/google/a/a/a/a/w;

    return-object v0

    .line 3144
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
    .locals 3

    .prologue
    .line 3181
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3182
    iget-object v1, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3183
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3186
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3187
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3190
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3132
    .line 4198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 4199
    sparse-switch v0, :sswitch_data_0

    .line 4203
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/w;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4204
    :sswitch_0
    return-object p0

    .line 4209
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3171
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3173
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3174
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 3176
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3177
    return-void
.end method
