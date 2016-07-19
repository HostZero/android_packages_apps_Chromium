.class public final Lcom/google/a/a/a/r;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/J;

.field public b:Lcom/google/a/a/a/u;

.field public c:Lcom/google/a/a/a/t;

.field public d:Ljava/lang/Boolean;

.field public e:Lcom/google/a/a/a/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 871
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1876
    iput-object v0, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    .line 1877
    iput-object v0, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    .line 1878
    iput-object v0, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    .line 1879
    iput-object v0, p0, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    .line 1880
    iput-object v0, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    .line 1881
    iput-object v0, p0, Lcom/google/a/a/a/r;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1882
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/r;->cachedSize:I

    .line 873
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 909
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 910
    iget-object v1, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    if-eqz v1, :cond_0

    .line 911
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    if-eqz v1, :cond_1

    .line 915
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    if-eqz v1, :cond_2

    .line 919
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 922
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 923
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    if-eqz v1, :cond_4

    .line 927
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 930
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 536
    .line 1938
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1939
    sparse-switch v0, :sswitch_data_0

    .line 1943
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/r;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    :sswitch_0
    return-object p0

    .line 1949
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    if-nez v0, :cond_1

    .line 1950
    new-instance v0, Lcom/google/a/a/a/a/J;

    invoke-direct {v0}, Lcom/google/a/a/a/a/J;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1956
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    if-nez v0, :cond_2

    .line 1957
    new-instance v0, Lcom/google/a/a/a/u;

    invoke-direct {v0}, Lcom/google/a/a/a/u;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    .line 1959
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1963
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    if-nez v0, :cond_3

    .line 1964
    new-instance v0, Lcom/google/a/a/a/t;

    invoke-direct {v0}, Lcom/google/a/a/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    .line 1966
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1970
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 1974
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    if-nez v0, :cond_4

    .line 1975
    new-instance v0, Lcom/google/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    .line 1977
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1939
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/r;->a:Lcom/google/a/a/a/a/J;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    if-eqz v0, :cond_1

    .line 893
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/r;->b:Lcom/google/a/a/a/u;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    if-eqz v0, :cond_2

    .line 896
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/r;->c:Lcom/google/a/a/a/t;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 899
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/r;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 901
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    if-eqz v0, :cond_4

    .line 902
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/r;->e:Lcom/google/a/a/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 904
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 905
    return-void
.end method
