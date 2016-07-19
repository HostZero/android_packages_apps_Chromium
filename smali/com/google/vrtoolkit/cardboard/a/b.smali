.class public final Lcom/google/vrtoolkit/cardboard/a/b;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Phone.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1092
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    .line 1093
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->b:F

    .line 1094
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->c:F

    .line 1095
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->d:F

    .line 1096
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->b:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    .line 1097
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->cachedSize:I

    .line 89
    return-void
.end method

.method private g()Lcom/google/vrtoolkit/cardboard/a/b;
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/a/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    .line 111
    :cond_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->b:F

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->c:F

    return v0
.end method

.method public final synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/a/b;->g()Lcom/google/vrtoolkit/cardboard/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/a/b;->g()Lcom/google/vrtoolkit/cardboard/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 141
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/b;->b:F

    .line 143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 146
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/b;->c:F

    .line 147
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 150
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/b;->d:F

    .line 151
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v1, v1

    if-lez v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 155
    add-int/2addr v0, v1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 158
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_3
    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->d:F

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8
    .line 1168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1169
    sparse-switch v0, :sswitch_data_0

    .line 1173
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    :sswitch_0
    return-object p0

    .line 1179
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->b:F

    .line 1180
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    goto :goto_0

    .line 1184
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->c:F

    .line 1185
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    goto :goto_0

    .line 1189
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->d:F

    .line 1190
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    goto :goto_0

    .line 1194
    :sswitch_4
    const/16 v0, 0x25

    .line 1195
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1196
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 1197
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1198
    if-eqz v0, :cond_1

    .line 1199
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1202
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v3

    aput v3, v2, v0

    .line 1203
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v0, v0

    goto :goto_1

    .line 1206
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v3

    aput v3, v2, v0

    .line 1207
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    goto :goto_0

    .line 1211
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    .line 1212
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c(I)I

    move-result v2

    .line 1213
    div-int/lit8 v3, v0, 0x4

    .line 1214
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 1215
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1216
    if-eqz v0, :cond_4

    .line 1217
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1219
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1220
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v4

    aput v4, v3, v0

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1214
    :cond_5
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v0, v0

    goto :goto_3

    .line 1222
    :cond_6
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    .line 1223
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d(I)V

    goto/16 :goto_0

    .line 1169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_5
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->b:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    .line 121
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->c:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    .line 124
    :cond_1
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v0, v0

    if-lez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 129
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 131
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/b;->e:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(F)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 136
    return-void
.end method
