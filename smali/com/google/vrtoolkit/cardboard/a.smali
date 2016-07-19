.class public final Lcom/google/vrtoolkit/cardboard/a;
.super Ljava/lang/Object;
.source "CardboardDeviceParams.java"


# static fields
.field private static final a:Lcom/google/vrtoolkit/cardboard/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:Lcom/google/vrtoolkit/cardboard/b;

.field private f:F

.field private g:F

.field private h:Lcom/google/vrtoolkit/cardboard/d;

.field private i:Z

.field private j:Lcom/google/vrtoolkit/cardboard/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "cardboard"

    .line 74
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "v1.0.0"

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 79
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "http"

    .line 80
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "g.co"

    .line 81
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "cardboard"

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 102
    sget-object v0, Lcom/google/vrtoolkit/cardboard/b;->a:Lcom/google/vrtoolkit/cardboard/b;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/a;->a:Lcom/google/vrtoolkit/cardboard/b;

    .line 107
    new-instance v0, Lcom/google/vrtoolkit/cardboard/a;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/a;->e()V

    .line 132
    return-void
.end method

.method private constructor <init>(Lcom/google/vrtoolkit/cardboard/a/a;)V
    .locals 6

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/a;->e()V

    .line 152
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->d()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a;->d:F

    .line 160
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->e()I

    move-result v0

    invoke-static {v0}, Lcom/google/vrtoolkit/cardboard/b;->a(I)Lcom/google/vrtoolkit/cardboard/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    .line 161
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->f()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a;->f:F

    .line 162
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->c()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a;->g:F

    .line 164
    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    .line 1075
    array-length v0, v1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    .line 1076
    const/4 v0, 0x0

    .line 164
    :goto_1
    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    .line 165
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/google/vrtoolkit/cardboard/d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    .line 169
    :cond_1
    iget-object v0, p1, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    invoke-static {v0}, Lcom/google/vrtoolkit/cardboard/c;->a([F)Lcom/google/vrtoolkit/cardboard/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    .line 170
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    if-nez v0, :cond_2

    .line 171
    new-instance v0, Lcom/google/vrtoolkit/cardboard/c;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/c;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    goto :goto_0

    .line 1079
    :cond_3
    new-instance v0, Lcom/google/vrtoolkit/cardboard/d;

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/vrtoolkit/cardboard/d;-><init>(FFFF)V

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/vrtoolkit/cardboard/a;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 259
    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 261
    const-string/jumbo v0, "CardboardDeviceParams"

    const-string/jumbo v2, "Error parsing param record: end of stream."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 282
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 265
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 266
    const v3, 0x35587a2b

    if-eq v2, v3, :cond_1

    .line 267
    const-string/jumbo v0, "CardboardDeviceParams"

    const-string/jumbo v2, "Error parsing param record: incorrect sentinel."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 268
    goto :goto_0

    .line 270
    :cond_1
    new-array v3, v0, [B

    .line 271
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 272
    const-string/jumbo v0, "CardboardDeviceParams"

    const-string/jumbo v2, "Error parsing param record: end of stream."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 273
    goto :goto_0

    .line 275
    :cond_2
    new-instance v2, Lcom/google/vrtoolkit/cardboard/a;

    new-instance v0, Lcom/google/vrtoolkit/cardboard/a/a;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/a/a;-><init>()V

    .line 276
    invoke-static {v0, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/a/a;

    invoke-direct {v2, v0}, Lcom/google/vrtoolkit/cardboard/a;-><init>(Lcom/google/vrtoolkit/cardboard/a/a;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string/jumbo v2, "CardboardDeviceParams"

    const-string/jumbo v3, "Error parsing protocol buffer: "

    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v0, v1

    .line 282
    goto :goto_0

    .line 278
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    const-string/jumbo v2, "CardboardDeviceParams"

    const-string/jumbo v3, "Error reading Cardboard parameters: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private e()V
    .locals 1

    .prologue
    .line 646
    const-string/jumbo v0, "Google, Inc."

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    .line 647
    const-string/jumbo v0, "Cardboard v1"

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    .line 649
    const v0, 0x3d75c28f    # 0.06f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a;->d:F

    .line 650
    sget-object v0, Lcom/google/vrtoolkit/cardboard/a;->a:Lcom/google/vrtoolkit/cardboard/b;

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    .line 651
    const v0, 0x3d0f5c29    # 0.035f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a;->f:F

    .line 652
    const v0, 0x3d2c0831    # 0.042f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/a;->g:F

    .line 654
    new-instance v0, Lcom/google/vrtoolkit/cardboard/d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    .line 658
    new-instance v0, Lcom/google/vrtoolkit/cardboard/c;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/c;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    .line 659
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    .line 297
    .line 1339
    :try_start_0
    new-instance v0, Lcom/google/vrtoolkit/cardboard/a/a;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/a/a;-><init>()V

    .line 1341
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->a(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1342
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->b(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1343
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a;->d:F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->b(F)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1344
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->a(I)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1345
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    sget-object v2, Lcom/google/vrtoolkit/cardboard/b;->b:Lcom/google/vrtoolkit/cardboard/b;

    if-ne v1, v2, :cond_1

    .line 1350
    const v1, 0x3d0f5c29    # 0.035f

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->c(F)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1354
    :goto_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a;->g:F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->a(F)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1355
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/d;->a()[F

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/a/a;->a:[F

    .line 1356
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/c;->a()[F

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/a/a;->b:[F

    .line 1358
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    if-eqz v1, :cond_0

    .line 1359
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->a(Z)Lcom/google/vrtoolkit/cardboard/a/a;

    .line 1362
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 298
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 299
    const v2, 0x35587a2b

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 300
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 301
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 303
    const/4 v0, 0x1

    .line 306
    :goto_1
    return v0

    .line 1352
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a;->f:F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a/a;->c(F)Lcom/google/vrtoolkit/cardboard/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string/jumbo v1, "CardboardDeviceParams"

    const-string/jumbo v2, "Error writing Cardboard parameters: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    goto :goto_1

    .line 305
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/a;->d:F

    return v0
.end method

.method public final d()Lcom/google/vrtoolkit/cardboard/d;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 591
    if-nez p1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 595
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 596
    goto :goto_0

    .line 599
    :cond_2
    instance-of v2, p1, Lcom/google/vrtoolkit/cardboard/a;

    if-eqz v2, :cond_0

    .line 603
    check-cast p1, Lcom/google/vrtoolkit/cardboard/a;

    .line 606
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a;->d:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/a;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    sget-object v3, Lcom/google/vrtoolkit/cardboard/b;->b:Lcom/google/vrtoolkit/cardboard/b;

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a;->f:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/a;->f:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_3
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/a;->g:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/a;->g:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    .line 613
    invoke-virtual {v2, v3}, Lcom/google/vrtoolkit/cardboard/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    .line 614
    invoke-virtual {v2, v3}, Lcom/google/vrtoolkit/cardboard/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    iget-boolean v3, p1, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  vendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a;->d:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  inter_lens_distance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->e:Lcom/google/vrtoolkit/cardboard/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  vertical_alignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a;->f:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  vertical_distance_to_lens_center: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/a;->g:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  screen_to_lens_distance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->h:Lcom/google/vrtoolkit/cardboard/d;

    .line 633
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/d;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\n  "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  left_eye_max_fov: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/a;->j:Lcom/google/vrtoolkit/cardboard/c;

    .line 634
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/c;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\n  "

    .line 635
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  distortion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/a;->i:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  magnet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
