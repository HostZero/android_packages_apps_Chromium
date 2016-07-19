.class public final Lcom/google/a/a/a/a/z;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/a/z;


# instance fields
.field public a:Lcom/google/a/a/a/a/y;

.field public b:Lcom/google/a/a/a/a/H;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2613
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3618
    iput-object v0, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    .line 3619
    iput-object v0, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    .line 3620
    iput-object v0, p0, Lcom/google/a/a/a/a/z;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3621
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/z;->cachedSize:I

    .line 2615
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/a/z;
    .locals 2

    .prologue
    .line 2596
    sget-object v0, Lcom/google/a/a/a/a/z;->c:[Lcom/google/a/a/a/a/z;

    if-nez v0, :cond_1

    .line 2597
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2599
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/z;->c:[Lcom/google/a/a/a/a/z;

    if-nez v0, :cond_0

    .line 2600
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/z;

    sput-object v0, Lcom/google/a/a/a/a/z;->c:[Lcom/google/a/a/a/a/z;

    .line 2602
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/z;->c:[Lcom/google/a/a/a/a/z;

    return-object v0

    .line 2602
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
    .line 2639
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2640
    iget-object v1, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    if-eqz v1, :cond_0

    .line 2641
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2644
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    if-eqz v1, :cond_1

    .line 2645
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2648
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2590
    .line 3656
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3657
    sparse-switch v0, :sswitch_data_0

    .line 3661
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/z;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3662
    :sswitch_0
    return-object p0

    .line 3667
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    if-nez v0, :cond_1

    .line 3668
    new-instance v0, Lcom/google/a/a/a/a/y;

    invoke-direct {v0}, Lcom/google/a/a/a/a/y;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    .line 3670
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3674
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    if-nez v0, :cond_2

    .line 3675
    new-instance v0, Lcom/google/a/a/a/a/H;

    invoke-direct {v0}, Lcom/google/a/a/a/a/H;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    .line 3677
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3657
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
    .line 2628
    iget-object v0, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    if-eqz v0, :cond_0

    .line 2629
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/z;->a:Lcom/google/a/a/a/a/y;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    if-eqz v0, :cond_1

    .line 2632
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/z;->b:Lcom/google/a/a/a/a/H;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2634
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2635
    return-void
.end method
