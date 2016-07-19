.class public final Lcom/google/ipc/invalidation/ticl/a/c;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidListenerProtocol.java"


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Lcom/google/ipc/invalidation/b/c;

.field private final e:I

.field private final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 224
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/c;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/c;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;Ljava/util/Collection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 239
    const-string/jumbo v0, "registration"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    .line 240
    const-string/jumbo v0, "retry_registration_state"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    .line 241
    if-eqz p3, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 243
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    .line 247
    :goto_0
    if-eqz p4, :cond_1

    .line 248
    or-int/lit8 v0, v0, 0x2

    .line 249
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    .line 253
    :goto_1
    const-string/jumbo v1, "registration_retry"

    invoke-static {v1, p5}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    .line 254
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->a:J

    .line 255
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    move v0, v1

    goto :goto_0

    .line 251
    :cond_1
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/c;
    .locals 6

    .prologue
    .line 221
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/c;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 311
    :try_start_0
    new-instance v1, Lcom/google/a/a/a/c;

    invoke-direct {v1}, Lcom/google/a/a/a/c;-><init>()V

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/c;

    move-object v5, v0

    .line 1320
    if-nez v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1321
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v5, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v4

    .line 1322
    :goto_1
    iget-object v3, v5, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1323
    iget-object v3, v5, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1325
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v5, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v4

    .line 1326
    :goto_2
    iget-object v6, v5, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1327
    iget-object v6, v5, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/a/d;->a(Lcom/google/a/a/a/d;)Lcom/google/ipc/invalidation/ticl/a/d;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1329
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, v5, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v1, v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v4

    .line 1330
    :goto_3
    iget-object v4, v5, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1331
    iget-object v4, v5, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/e;->a(Lcom/google/a/a/a/e;)Lcom/google/ipc/invalidation/ticl/a/e;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1333
    :cond_3
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/c;

    iget-object v4, v5, Lcom/google/a/a/a/c;->c:[B

    invoke-static {v4}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    iget-object v5, v5, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lcom/google/ipc/invalidation/ticl/a/c;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 314
    :catch_1
    move-exception v1

    .line 315
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 296
    const-string/jumbo v0, "<AndroidListenerState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 297
    const-string/jumbo v0, " registration=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 298
    const-string/jumbo v0, " retry_registration_state=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 299
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, " client_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string/jumbo v0, " request_code_seq_num="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 305
    :cond_1
    const-string/jumbo v0, " registration_retry=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 306
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 307
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 283
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    add-int/2addr v0, v1

    .line 291
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 262
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->a:J

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    if-ne p0, p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 272
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/c;

    .line 273
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/c;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    return v0
.end method

.method public final g()Z
    .locals 4

    .prologue
    .line 265
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/c;->a:J

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

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    return-object v0
.end method

.method public final i()[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 341
    .line 1345
    new-instance v4, Lcom/google/a/a/a/c;

    invoke-direct {v4}, Lcom/google/a/a/a/c;-><init>()V

    .line 1346
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v4, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    move v1, v2

    .line 1347
    :goto_0
    iget-object v0, v4, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1348
    iget-object v5, v4, Lcom/google/a/a/a/c;->a:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1347
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/d;

    iput-object v0, v4, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    move v1, v2

    .line 1351
    :goto_1
    iget-object v0, v4, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1352
    iget-object v5, v4, Lcom/google/a/a/a/c;->b:[Lcom/google/a/a/a/d;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/d;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/d;->d()Lcom/google/a/a/a/d;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1354
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_2
    iput-object v0, v4, Lcom/google/a/a/a/c;->c:[B

    .line 1355
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    iput-object v3, v4, Lcom/google/a/a/a/c;->d:Ljava/lang/Integer;

    .line 1356
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/e;

    iput-object v0, v4, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    .line 1357
    :goto_3
    iget-object v0, v4, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 1358
    iget-object v1, v4, Lcom/google/a/a/a/c;->e:[Lcom/google/a/a/a/e;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/c;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/e;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/e;->d()Lcom/google/a/a/a/e;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1357
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 1354
    goto :goto_2

    .line 341
    :cond_4
    invoke-static {v4}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
