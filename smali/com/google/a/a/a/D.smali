.class public final Lcom/google/a/a/a/D;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoJavaClient.java"


# instance fields
.field public a:[Lcom/google/a/a/a/a/s;

.field public b:[Lcom/google/a/a/a/a/s;

.field public c:[Lcom/google/a/a/a/a/r;

.field public d:[Lcom/google/a/a/a/a/B;

.field public e:Lcom/google/a/a/a/a/p;

.field public f:Lcom/google/a/a/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1048
    invoke-static {}, Lcom/google/a/a/a/a/s;->a()[Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    .line 1049
    invoke-static {}, Lcom/google/a/a/a/a/s;->a()[Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    .line 1050
    invoke-static {}, Lcom/google/a/a/a/a/r;->a()[Lcom/google/a/a/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    .line 1051
    invoke-static {}, Lcom/google/a/a/a/a/B;->a()[Lcom/google/a/a/a/a/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    .line 1052
    iput-object v1, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    .line 1053
    iput-object v1, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    .line 1054
    iput-object v1, p0, Lcom/google/a/a/a/D;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/D;->cachedSize:I

    .line 45
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 106
    iget-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    .line 109
    if-eqz v3, :cond_0

    .line 110
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 116
    :goto_1
    iget-object v3, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 117
    iget-object v3, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    .line 118
    if-eqz v3, :cond_3

    .line 119
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 125
    :goto_2
    iget-object v3, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 126
    iget-object v3, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    aget-object v3, v3, v0

    .line 127
    if-eqz v3, :cond_6

    .line 128
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 125
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 133
    :cond_8
    iget-object v2, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 134
    :goto_3
    iget-object v2, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 135
    iget-object v2, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    aget-object v2, v2, v1

    .line 136
    if-eqz v2, :cond_9

    .line 137
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 142
    :cond_a
    iget-object v1, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    if-eqz v1, :cond_b

    .line 143
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_b
    iget-object v1, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    if-eqz v1, :cond_c

    .line 147
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_c
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8
    .line 1158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1159
    sparse-switch v0, :sswitch_data_0

    .line 1163
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/D;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    :sswitch_0
    return-object p0

    .line 1169
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1171
    iget-object v0, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_2

    move v0, v1

    .line 1172
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/s;

    .line 1174
    if-eqz v0, :cond_1

    .line 1175
    iget-object v3, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1178
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1179
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1180
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    goto :goto_1

    .line 1183
    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1184
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1185
    iput-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    goto :goto_0

    .line 1189
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1191
    iget-object v0, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    if-nez v0, :cond_5

    move v0, v1

    .line 1192
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/s;

    .line 1194
    if-eqz v0, :cond_4

    .line 1195
    iget-object v3, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1197
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1198
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1199
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1200
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1191
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    goto :goto_3

    .line 1203
    :cond_6
    new-instance v3, Lcom/google/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/a/a/a/a/s;-><init>()V

    aput-object v3, v2, v0

    .line 1204
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1205
    iput-object v2, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    goto/16 :goto_0

    .line 1209
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1211
    iget-object v0, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    if-nez v0, :cond_8

    move v0, v1

    .line 1212
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/r;

    .line 1214
    if-eqz v0, :cond_7

    .line 1215
    iget-object v3, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1217
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1218
    new-instance v3, Lcom/google/a/a/a/a/r;

    invoke-direct {v3}, Lcom/google/a/a/a/a/r;-><init>()V

    aput-object v3, v2, v0

    .line 1219
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1220
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1211
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    goto :goto_5

    .line 1223
    :cond_9
    new-instance v3, Lcom/google/a/a/a/a/r;

    invoke-direct {v3}, Lcom/google/a/a/a/a/r;-><init>()V

    aput-object v3, v2, v0

    .line 1224
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1225
    iput-object v2, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    goto/16 :goto_0

    .line 1229
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1231
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    if-nez v0, :cond_b

    move v0, v1

    .line 1232
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/B;

    .line 1234
    if-eqz v0, :cond_a

    .line 1235
    iget-object v3, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 1238
    new-instance v3, Lcom/google/a/a/a/a/B;

    invoke-direct {v3}, Lcom/google/a/a/a/a/B;-><init>()V

    aput-object v3, v2, v0

    .line 1239
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1240
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1231
    :cond_b
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    goto :goto_7

    .line 1243
    :cond_c
    new-instance v3, Lcom/google/a/a/a/a/B;

    invoke-direct {v3}, Lcom/google/a/a/a/a/B;-><init>()V

    aput-object v3, v2, v0

    .line 1244
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1245
    iput-object v2, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    goto/16 :goto_0

    .line 1249
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    if-nez v0, :cond_d

    .line 1250
    new-instance v0, Lcom/google/a/a/a/a/p;

    invoke-direct {v0}, Lcom/google/a/a/a/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    .line 1252
    :cond_d
    iget-object v0, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1256
    :sswitch_6
    iget-object v0, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    if-nez v0, :cond_e

    .line 1257
    new-instance v0, Lcom/google/a/a/a/a/n;

    invoke-direct {v0}, Lcom/google/a/a/a/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    .line 1259
    :cond_e
    iget-object v0, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1159
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_0

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 71
    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    .line 73
    if-eqz v2, :cond_2

    .line 74
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 79
    :goto_2
    iget-object v2, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 80
    iget-object v2, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    aget-object v2, v2, v0

    .line 81
    if-eqz v2, :cond_4

    .line 82
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 87
    :goto_3
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 88
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    aget-object v0, v0, v1

    .line 89
    if-eqz v0, :cond_6

    .line 90
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    if-eqz v0, :cond_8

    .line 95
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    if-eqz v0, :cond_9

    .line 98
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 100
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 101
    return-void
.end method
