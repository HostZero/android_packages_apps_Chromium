.class public final Lcom/google/ipc/invalidation/ticl/a/I;
.super Lcom/google/ipc/invalidation/b/n;
.source "Client.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/J;

.field private final c:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/I;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/I;-><init>(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/b/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/b/c;)V
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 228
    const/4 v0, 0x0

    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 231
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    .line 235
    :goto_0
    if-eqz p2, :cond_1

    .line 236
    or-int/lit8 v0, v0, 0x2

    .line 237
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    .line 241
    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/I;->a:J

    .line 242
    return-void

    .line 233
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/J;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    goto :goto_0

    .line 239
    :cond_1
    sget-object v1, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_1
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/I;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/I;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/I;-><init>(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/I;
    .locals 3

    .prologue
    .line 283
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/a/d;

    invoke-direct {v0}, Lcom/google/a/a/a/a/d;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/a/d;

    .line 1292
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1293
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/I;

    iget-object v2, v0, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/J;->a(Lcom/google/a/a/a/a/e;)Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v2

    iget-object v0, v0, Lcom/google/a/a/a/a/d;->b:[B

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ipc/invalidation/ticl/a/I;-><init>(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/b/c;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 283
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 286
    :catch_1
    move-exception v0

    .line 287
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 245
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/I;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 248
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/I;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/J;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 271
    const-string/jumbo v0, "<PersistentStateBlob:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 272
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string/jumbo v0, " ticl_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string/jumbo v0, " authentication_code="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 278
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 279
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/I;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 261
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/J;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    :cond_1
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final d()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 298
    .line 1302
    new-instance v2, Lcom/google/a/a/a/a/d;

    invoke-direct {v2}, Lcom/google/a/a/a/a/d;-><init>()V

    .line 1303
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/J;->f()Lcom/google/a/a/a/a/e;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/d;->a:Lcom/google/a/a/a/a/e;

    .line 1304
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/d;->b:[B

    .line 298
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 1303
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    if-ne p0, p1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/I;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 253
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/I;

    .line 254
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/I;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/I;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/I;->b:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/I;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/I;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
