.class public final Lcom/google/ipc/invalidation/ticl/a/av;
.super Lcom/google/ipc/invalidation/b/n;
.source "JavaClient.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/av;


# instance fields
.field private final b:J

.field private final c:I

.field private final d:J

.field private final e:J

.field private final f:Lcom/google/ipc/invalidation/ticl/a/as;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/av;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/av;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/as;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/av;->a:Lcom/google/ipc/invalidation/ticl/a/av;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/as;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    .line 221
    :goto_0
    if-eqz p2, :cond_1

    .line 222
    or-int/lit8 v0, v0, 0x2

    .line 223
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    .line 227
    :goto_1
    if-eqz p3, :cond_2

    .line 228
    or-int/lit8 v0, v0, 0x4

    .line 229
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    .line 233
    :goto_2
    if-eqz p4, :cond_3

    .line 234
    or-int/lit8 v0, v0, 0x8

    .line 235
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    .line 239
    :goto_3
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

    .line 240
    return-void

    .line 219
    :cond_0
    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    goto :goto_0

    .line 225
    :cond_1
    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    goto :goto_1

    .line 231
    :cond_2
    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    goto :goto_2

    .line 237
    :cond_3
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/as;->a:Lcom/google/ipc/invalidation/ticl/a/as;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    goto :goto_3
.end method

.method static a(Lcom/google/a/a/a/F;)Lcom/google/ipc/invalidation/ticl/a/av;
    .locals 5

    .prologue
    .line 310
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/av;

    iget-object v1, p0, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Lcom/google/a/a/a/D;)Lcom/google/ipc/invalidation/ticl/a/as;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/av;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/as;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/as;)Lcom/google/ipc/invalidation/ticl/a/av;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/av;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/a/av;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/as;)V

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 243
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

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

.method private h()Z
    .locals 4

    .prologue
    .line 246
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

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

.method private i()Z
    .locals 4

    .prologue
    .line 249
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

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

.method private j()Z
    .locals 4

    .prologue
    .line 252
    const-wide/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

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
.method public final a()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 283
    const-string/jumbo v0, "<ProtocolHandlerState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 284
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string/jumbo v0, " message_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string/jumbo v0, " last_known_server_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    const-string/jumbo v0, " next_message_send_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 293
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string/jumbo v0, " batcher_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 296
    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 297
    return-void
.end method

.method protected final b()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 266
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

    .line 1214
    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 267
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    add-int/2addr v0, v1

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    .line 2214
    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 271
    add-int/2addr v0, v1

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    .line 3214
    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 274
    add-int/2addr v0, v1

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/as;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_3
    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    return-wide v0
.end method

.method public final e()Lcom/google/ipc/invalidation/ticl/a/as;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    if-ne p0, p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/av;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 257
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/av;

    .line 258
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/av;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    if-ne v2, v3, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/av;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/F;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 322
    new-instance v2, Lcom/google/a/a/a/F;

    invoke-direct {v2}, Lcom/google/a/a/a/F;-><init>()V

    .line 323
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/F;->a:Ljava/lang/Integer;

    .line 324
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/av;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/F;->b:Ljava/lang/Long;

    .line 325
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/av;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/F;->c:Ljava/lang/Long;

    .line 326
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/av;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/av;->f:Lcom/google/ipc/invalidation/ticl/a/as;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/as;->i()Lcom/google/a/a/a/D;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/F;->d:Lcom/google/a/a/a/D;

    .line 327
    return-object v2

    :cond_1
    move-object v0, v1

    .line 323
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 324
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 325
    goto :goto_2
.end method
