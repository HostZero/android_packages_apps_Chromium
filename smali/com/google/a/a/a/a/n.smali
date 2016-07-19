.class public final Lcom/google/a/a/a/a/n;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/k;

.field public b:[Lcom/google/a/a/a/a/t;

.field public c:[Lcom/google/a/a/a/a/t;

.field public d:Ljava/lang/Boolean;

.field public e:Lcom/google/a/a/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1869
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2874
    iput-object v1, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    .line 2875
    invoke-static {}, Lcom/google/a/a/a/a/t;->a()[Lcom/google/a/a/a/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    .line 2876
    invoke-static {}, Lcom/google/a/a/a/a/t;->a()[Lcom/google/a/a/a/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    .line 2877
    iput-object v1, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    .line 2878
    iput-object v1, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    .line 2879
    iput-object v1, p0, Lcom/google/a/a/a/a/n;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2880
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/n;->cachedSize:I

    .line 1871
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1917
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1918
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    if-eqz v2, :cond_0

    .line 1919
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1922
    :cond_0
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 1923
    :goto_0
    iget-object v3, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1924
    iget-object v3, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    aget-object v3, v3, v0

    .line 1925
    if-eqz v3, :cond_1

    .line 1926
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1923
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1931
    :cond_3
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1932
    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1933
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    aget-object v2, v2, v1

    .line 1934
    if-eqz v2, :cond_4

    .line 1935
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1932
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1940
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 1941
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1944
    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    if-eqz v1, :cond_7

    .line 1945
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1948
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1837
    .line 2956
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2957
    sparse-switch v0, :sswitch_data_0

    .line 2961
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/n;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2962
    :sswitch_0
    return-object p0

    .line 2967
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    if-nez v0, :cond_1

    .line 2968
    new-instance v0, Lcom/google/a/a/a/a/k;

    invoke-direct {v0}, Lcom/google/a/a/a/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2974
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2976
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    if-nez v0, :cond_3

    move v0, v1

    .line 2977
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/t;

    .line 2979
    if-eqz v0, :cond_2

    .line 2980
    iget-object v3, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2982
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2983
    new-instance v3, Lcom/google/a/a/a/a/t;

    invoke-direct {v3}, Lcom/google/a/a/a/a/t;-><init>()V

    aput-object v3, v2, v0

    .line 2984
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2985
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 2982
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2976
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    goto :goto_1

    .line 2988
    :cond_4
    new-instance v3, Lcom/google/a/a/a/a/t;

    invoke-direct {v3}, Lcom/google/a/a/a/a/t;-><init>()V

    aput-object v3, v2, v0

    .line 2989
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2990
    iput-object v2, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    goto :goto_0

    .line 2994
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2996
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    if-nez v0, :cond_6

    move v0, v1

    .line 2997
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/t;

    .line 2999
    if-eqz v0, :cond_5

    .line 3000
    iget-object v3, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3002
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 3003
    new-instance v3, Lcom/google/a/a/a/a/t;

    invoke-direct {v3}, Lcom/google/a/a/a/a/t;-><init>()V

    aput-object v3, v2, v0

    .line 3004
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3005
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 3002
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2996
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    goto :goto_3

    .line 3008
    :cond_7
    new-instance v3, Lcom/google/a/a/a/a/t;

    invoke-direct {v3}, Lcom/google/a/a/a/a/t;-><init>()V

    aput-object v3, v2, v0

    .line 3009
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3010
    iput-object v2, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    goto/16 :goto_0

    .line 3014
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3018
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    if-nez v0, :cond_8

    .line 3019
    new-instance v0, Lcom/google/a/a/a/a/h;

    invoke-direct {v0}, Lcom/google/a/a/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    .line 3021
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2957
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1887
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    if-eqz v0, :cond_0

    .line 1888
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1891
    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1892
    iget-object v2, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    aget-object v2, v2, v0

    .line 1893
    if-eqz v2, :cond_1

    .line 1894
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1891
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1898
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1899
    :goto_1
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 1900
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    aget-object v0, v0, v1

    .line 1901
    if-eqz v0, :cond_3

    .line 1902
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1899
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1906
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 1907
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 1909
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    if-eqz v0, :cond_6

    .line 1910
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1912
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1913
    return-void
.end method
