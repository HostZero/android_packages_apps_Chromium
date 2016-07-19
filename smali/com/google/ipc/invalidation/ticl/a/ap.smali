.class public final Lcom/google/ipc/invalidation/ticl/a/ap;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 278
    const/4 v0, 0x0

    .line 279
    const-string/jumbo v1, "code"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/ap;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->b:I

    .line 281
    if-eqz p2, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 283
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    .line 287
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->a:J

    .line 288
    return-void

    .line 285
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/H;)Lcom/google/ipc/invalidation/ticl/a/ap;
    .locals 3

    .prologue
    .line 333
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ap;

    iget-object v1, p0, Lcom/google/a/a/a/a/H;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/H;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ap;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 293
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->a:J

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
    .line 290
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->b:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "<StatusP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 315
    const-string/jumbo v0, " code="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 316
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string/jumbo v0, " description="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 319
    :cond_0
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 320
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 306
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->b:I

    add-int/2addr v0, v1

    .line 307
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_0
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    if-ne p0, p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ap;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 298
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ap;

    .line 299
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/ap;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ap;->b:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ap;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ap;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
