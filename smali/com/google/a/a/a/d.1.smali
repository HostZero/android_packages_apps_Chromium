.class public final Lcom/google/a/a/a/d;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidListenerProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/d;


# instance fields
.field public a:Lcom/google/a/a/a/a/s;

.field public b:Lcom/google/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1039
    iput-object v0, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    .line 1040
    iput-object v0, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    .line 1041
    iput-object v0, p0, Lcom/google/a/a/a/d;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/d;->cachedSize:I

    .line 36
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/d;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/a/a/a/d;->c:[Lcom/google/a/a/a/d;

    if-nez v0, :cond_1

    .line 18
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/d;->c:[Lcom/google/a/a/a/d;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/d;

    sput-object v0, Lcom/google/a/a/a/d;->c:[Lcom/google/a/a/a/d;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/google/a/a/a/d;->c:[Lcom/google/a/a/a/d;

    return-object v0

    .line 23
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
    .line 60
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    if-eqz v1, :cond_1

    .line 66
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11
    .line 1077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1078
    sparse-switch v0, :sswitch_data_0

    .line 1082
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/d;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    :sswitch_0
    return-object p0

    .line 1088
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_1

    .line 1089
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1095
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    if-nez v0, :cond_2

    .line 1096
    new-instance v0, Lcom/google/a/a/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1078
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
    .line 49
    iget-object v0, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/d;->a:Lcom/google/a/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/d;->b:Lcom/google/a/a/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 55
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 56
    return-void
.end method
