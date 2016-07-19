.class public final Lcom/google/a/a/a/a/s;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/a/s;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1469
    iput-object v0, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    .line 1470
    iput-object v0, p0, Lcom/google/a/a/a/a/s;->b:[B

    .line 1471
    iput-object v0, p0, Lcom/google/a/a/a/a/s;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1472
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/s;->cachedSize:I

    .line 466
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/s;
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/google/a/a/a/a/s;->c:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_1

    .line 448
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/s;->c:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    sput-object v0, Lcom/google/a/a/a/a/s;->c:[Lcom/google/a/a/a/a/s;

    .line 453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/s;->c:[Lcom/google/a/a/a/a/s;

    return-object v0

    .line 453
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
    .line 490
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 492
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/s;->b:[B

    if-eqz v1, :cond_1

    .line 496
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/s;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 441
    .line 1507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1508
    sparse-switch v0, :sswitch_data_0

    .line 1512
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/s;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    :sswitch_0
    return-object p0

    .line 1518
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1522
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/s;->b:[B

    goto :goto_0

    .line 1508
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/s;->b:[B

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/s;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 485
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 486
    return-void
.end method
