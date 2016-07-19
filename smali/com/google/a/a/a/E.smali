.class public final Lcom/google/a/a/a/E;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoJavaClient.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/f;

.field public b:[B

.field public c:[B

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Boolean;

.field public g:Lcom/google/a/a/a/F;

.field public h:Lcom/google/a/a/a/H;

.field public i:Lcom/google/a/a/a/G;

.field public j:Lcom/google/a/a/a/G;

.field public k:Lcom/google/a/a/a/G;

.field public l:Lcom/google/a/a/a/G;

.field public m:Lcom/google/a/a/a/G;

.field public n:Lcom/google/a/a/a/a/e;

.field public o:Lcom/google/a/a/a/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 887
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1892
    iput-object v0, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    .line 1893
    iput-object v0, p0, Lcom/google/a/a/a/E;->b:[B

    .line 1894
    iput-object v0, p0, Lcom/google/a/a/a/E;->c:[B

    .line 1895
    iput-object v0, p0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    .line 1896
    iput-object v0, p0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    .line 1897
    iput-object v0, p0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    .line 1898
    iput-object v0, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    .line 1899
    iput-object v0, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    .line 1900
    iput-object v0, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    .line 1901
    iput-object v0, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    .line 1902
    iput-object v0, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    .line 1903
    iput-object v0, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    .line 1904
    iput-object v0, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    .line 1905
    iput-object v0, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    .line 1906
    iput-object v0, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    .line 1907
    iput-object v0, p0, Lcom/google/a/a/a/E;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1908
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/E;->cachedSize:I

    .line 889
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 965
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 966
    iget-object v1, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    if-eqz v1, :cond_0

    .line 967
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/E;->b:[B

    if-eqz v1, :cond_1

    .line 971
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/E;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/E;->c:[B

    if-eqz v1, :cond_2

    .line 975
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/E;->c:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 978
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 979
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 983
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 987
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 990
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    if-eqz v1, :cond_6

    .line 991
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 994
    :cond_6
    iget-object v1, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    if-eqz v1, :cond_7

    .line 995
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    :cond_7
    iget-object v1, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    if-eqz v1, :cond_8

    .line 999
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    :cond_8
    iget-object v1, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    if-eqz v1, :cond_9

    .line 1003
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1006
    :cond_9
    iget-object v1, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    if-eqz v1, :cond_a

    .line 1007
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1010
    :cond_a
    iget-object v1, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    if-eqz v1, :cond_b

    .line 1011
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    :cond_b
    iget-object v1, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    if-eqz v1, :cond_c

    .line 1015
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1018
    :cond_c
    iget-object v1, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    if-eqz v1, :cond_d

    .line 1019
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    :cond_d
    iget-object v1, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    if-eqz v1, :cond_e

    .line 1023
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1026
    :cond_e
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 825
    .line 2034
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2035
    sparse-switch v0, :sswitch_data_0

    .line 2039
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/E;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    :sswitch_0
    return-object p0

    .line 2045
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    if-nez v0, :cond_1

    .line 2046
    new-instance v0, Lcom/google/a/a/a/a/f;

    invoke-direct {v0}, Lcom/google/a/a/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2052
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/E;->b:[B

    goto :goto_0

    .line 2056
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->g()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/E;->c:[B

    goto :goto_0

    .line 2060
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2064
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    goto :goto_0

    .line 2068
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 2072
    :sswitch_7
    iget-object v0, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    if-nez v0, :cond_2

    .line 2073
    new-instance v0, Lcom/google/a/a/a/F;

    invoke-direct {v0}, Lcom/google/a/a/a/F;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    .line 2075
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2079
    :sswitch_8
    iget-object v0, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    if-nez v0, :cond_3

    .line 2080
    new-instance v0, Lcom/google/a/a/a/H;

    invoke-direct {v0}, Lcom/google/a/a/a/H;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    .line 2082
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2086
    :sswitch_9
    iget-object v0, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    if-nez v0, :cond_4

    .line 2087
    new-instance v0, Lcom/google/a/a/a/G;

    invoke-direct {v0}, Lcom/google/a/a/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    .line 2089
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2093
    :sswitch_a
    iget-object v0, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    if-nez v0, :cond_5

    .line 2094
    new-instance v0, Lcom/google/a/a/a/G;

    invoke-direct {v0}, Lcom/google/a/a/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    .line 2096
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2100
    :sswitch_b
    iget-object v0, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    if-nez v0, :cond_6

    .line 2101
    new-instance v0, Lcom/google/a/a/a/G;

    invoke-direct {v0}, Lcom/google/a/a/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    .line 2103
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2107
    :sswitch_c
    iget-object v0, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    if-nez v0, :cond_7

    .line 2108
    new-instance v0, Lcom/google/a/a/a/G;

    invoke-direct {v0}, Lcom/google/a/a/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    .line 2110
    :cond_7
    iget-object v0, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2114
    :sswitch_d
    iget-object v0, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    if-nez v0, :cond_8

    .line 2115
    new-instance v0, Lcom/google/a/a/a/G;

    invoke-direct {v0}, Lcom/google/a/a/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    .line 2117
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2121
    :sswitch_e
    iget-object v0, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    if-nez v0, :cond_9

    .line 2122
    new-instance v0, Lcom/google/a/a/a/a/e;

    invoke-direct {v0}, Lcom/google/a/a/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    .line 2124
    :cond_9
    iget-object v0, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2128
    :sswitch_f
    iget-object v0, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    if-nez v0, :cond_a

    .line 2129
    new-instance v0, Lcom/google/a/a/a/I;

    invoke-direct {v0}, Lcom/google/a/a/a/I;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    .line 2131
    :cond_a
    iget-object v0, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2035
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    if-eqz v0, :cond_0

    .line 916
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/E;->b:[B

    if-eqz v0, :cond_1

    .line 919
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/E;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/E;->c:[B

    if-eqz v0, :cond_2

    .line 922
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/E;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 925
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 928
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 930
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 931
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 933
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    if-eqz v0, :cond_6

    .line 934
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    if-eqz v0, :cond_7

    .line 937
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 939
    :cond_7
    iget-object v0, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    if-eqz v0, :cond_8

    .line 940
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 942
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    if-eqz v0, :cond_9

    .line 943
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 945
    :cond_9
    iget-object v0, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    if-eqz v0, :cond_a

    .line 946
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 948
    :cond_a
    iget-object v0, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    if-eqz v0, :cond_b

    .line 949
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 951
    :cond_b
    iget-object v0, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    if-eqz v0, :cond_c

    .line 952
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 954
    :cond_c
    iget-object v0, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    if-eqz v0, :cond_d

    .line 955
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 957
    :cond_d
    iget-object v0, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    if-eqz v0, :cond_e

    .line 958
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 960
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 961
    return-void
.end method
