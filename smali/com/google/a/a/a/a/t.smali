.class public final Lcom/google/a/a/a/a/t;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/a/t;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2063
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3068
    iput-object v0, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    .line 3069
    iput-object v0, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    .line 3070
    iput-object v0, p0, Lcom/google/a/a/a/a/t;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3071
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/t;->cachedSize:I

    .line 2065
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/t;
    .locals 2

    .prologue
    .line 2046
    sget-object v0, Lcom/google/a/a/a/a/t;->c:[Lcom/google/a/a/a/a/t;

    if-nez v0, :cond_1

    .line 2047
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2049
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/t;->c:[Lcom/google/a/a/a/a/t;

    if-nez v0, :cond_0

    .line 2050
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/t;

    sput-object v0, Lcom/google/a/a/a/a/t;->c:[Lcom/google/a/a/a/a/t;

    .line 2052
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2054
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/t;->c:[Lcom/google/a/a/a/a/t;

    return-object v0

    .line 2052
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
    .line 2089
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2090
    iget-object v1, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2091
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2094
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2095
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2098
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2040
    .line 3106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3107
    sparse-switch v0, :sswitch_data_0

    .line 3111
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/t;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3112
    :sswitch_0
    return-object p0

    .line 3117
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    goto :goto_0

    .line 3121
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3107
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2079
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2082
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 2084
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2085
    return-void
.end method
