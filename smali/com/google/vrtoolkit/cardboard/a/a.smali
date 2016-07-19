.class public final Lcom/google/vrtoolkit/cardboard/a/a;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CardboardDevice.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:[F

.field public b:[F

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:F

.field private g:F

.field private h:I

.field private i:F

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1211
    iput v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 1212
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->d:Ljava/lang/String;

    .line 1213
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->e:Ljava/lang/String;

    .line 1214
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->f:F

    .line 1215
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->g:F

    .line 1216
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->b:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    .line 1217
    iput v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->h:I

    .line 1218
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->i:F

    .line 1219
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->b:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    .line 1220
    iput-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->j:Z

    .line 1221
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->k:I

    .line 1222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->cachedSize:I

    .line 208
    return-void
.end method

.method private h()Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 2

    .prologue
    .line 229
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/a/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v1, v1

    if-lez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    .line 239
    :cond_1
    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(F)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 92
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->f:F

    .line 93
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 94
    return-object p0
.end method

.method public final a(I)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 133
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->h:I

    .line 134
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 135
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->d:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 53
    return-object p0
.end method

.method public final a(Z)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->j:Z

    .line 175
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 176
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(F)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 111
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->g:F

    .line 112
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 113
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->e:Ljava/lang/String;

    .line 74
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 75
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->f:F

    return v0
.end method

.method public final c(F)Lcom/google/vrtoolkit/cardboard/a/a;
    .locals 1

    .prologue
    .line 152
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->i:F

    .line 153
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    .line 154
    return-object p0
.end method

.method public final synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/a/a;->h()Lcom/google/vrtoolkit/cardboard/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/a/a;->h()Lcom/google/vrtoolkit/cardboard/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 292
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 293
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->d:Ljava/lang/String;

    .line 294
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 297
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->e:Ljava/lang/String;

    .line 298
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 301
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->f:F

    .line 302
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :cond_2
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 305
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->g:F

    .line 306
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v1, v1

    if-lez v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 310
    add-int/2addr v0, v1

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 313
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_4
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 316
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->i:F

    .line 317
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_5
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v1, v1

    if-lez v1, :cond_6

    .line 320
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 321
    add-int/2addr v0, v1

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 324
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_6
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 327
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->j:Z

    .line 328
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_7
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 331
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->h:I

    .line 332
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_8
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    .line 335
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->k:I

    .line 336
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_9
    return v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->g:F

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->h:I

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->i:F

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->j:Z

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8
    .line 1346
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1347
    sparse-switch v0, :sswitch_data_0

    .line 1351
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    :sswitch_0
    return-object p0

    .line 1357
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->d:Ljava/lang/String;

    .line 1358
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto :goto_0

    .line 1362
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->e:Ljava/lang/String;

    .line 1363
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto :goto_0

    .line 1367
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->f:F

    .line 1368
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto :goto_0

    .line 1372
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->g:F

    .line 1373
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto :goto_0

    .line 1377
    :sswitch_5
    const/16 v0, 0x2d

    .line 1378
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1379
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 1380
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1381
    if-eqz v0, :cond_1

    .line 1382
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1384
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1385
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v3

    aput v3, v2, v0

    .line 1386
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1379
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v0, v0

    goto :goto_1

    .line 1389
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v3

    aput v3, v2, v0

    .line 1390
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    goto :goto_0

    .line 1394
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    .line 1395
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c(I)I

    move-result v2

    .line 1396
    div-int/lit8 v3, v0, 0x4

    .line 1397
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 1398
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1399
    if-eqz v0, :cond_4

    .line 1400
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1403
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v4

    aput v4, v3, v0

    .line 1402
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1397
    :cond_5
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v0, v0

    goto :goto_3

    .line 1405
    :cond_6
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    .line 1406
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d(I)V

    goto/16 :goto_0

    .line 1410
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->i:F

    .line 1411
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto/16 :goto_0

    .line 1415
    :sswitch_8
    const/16 v0, 0x3d

    .line 1416
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1417
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    if-nez v0, :cond_8

    move v0, v1

    .line 1418
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1419
    if-eqz v0, :cond_7

    .line 1420
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1422
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1423
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v3

    aput v3, v2, v0

    .line 1424
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 1422
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1417
    :cond_8
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v0, v0

    goto :goto_5

    .line 1427
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v3

    aput v3, v2, v0

    .line 1428
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    goto/16 :goto_0

    .line 1432
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->h()I

    move-result v0

    .line 1433
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c(I)I

    move-result v2

    .line 1434
    div-int/lit8 v3, v0, 0x4

    .line 1435
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    if-nez v0, :cond_b

    move v0, v1

    .line 1436
    :goto_7
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1437
    if-eqz v0, :cond_a

    .line 1438
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1440
    :cond_a
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 1441
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->b()F

    move-result v4

    aput v4, v3, v0

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1435
    :cond_b
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v0, v0

    goto :goto_7

    .line 1443
    :cond_c
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    .line 1444
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d(I)V

    goto/16 :goto_0

    .line 1448
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->j:Z

    .line 1449
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto/16 :goto_0

    .line 1453
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 1454
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1458
    :pswitch_0
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->h:I

    .line 1459
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto/16 :goto_0

    .line 1465
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    .line 1466
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1471
    :pswitch_1
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->k:I

    .line 1472
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    goto/16 :goto_0

    .line 1347
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_6
        0x2d -> :sswitch_5
        0x35 -> :sswitch_7
        0x3a -> :sswitch_9
        0x3d -> :sswitch_8
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 1454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1466
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 246
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 249
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 252
    :cond_1
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 253
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->f:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    .line 255
    :cond_2
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 256
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->g:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v0, v0

    if-lez v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 260
    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 261
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    move v0, v1

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(F)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_4
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 267
    const/4 v0, 0x6

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a/a;->i:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v0, v0

    if-lez v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 271
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 272
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->k(I)V

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(F)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_6
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 278
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 280
    :cond_7
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 281
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 283
    :cond_8
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a/a;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 284
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a/a;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 286
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 287
    return-void
.end method
