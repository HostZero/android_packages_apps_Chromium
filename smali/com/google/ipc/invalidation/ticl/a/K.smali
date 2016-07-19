.class public final Lcom/google/ipc/invalidation/ticl/a/K;
.super Lcom/google/ipc/invalidation/b/n;
.source "Client.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/K;


# instance fields
.field private final b:J

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/K;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/K;-><init>(Ljava/lang/Integer;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/K;->a:Lcom/google/ipc/invalidation/ticl/a/K;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 325
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 326
    const/4 v1, 0x0

    .line 327
    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    .line 333
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/K;->b:J

    .line 334
    return-void

    .line 331
    :cond_0
    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/f;)Lcom/google/ipc/invalidation/ticl/a/K;
    .locals 2

    .prologue
    .line 374
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/K;

    iget-object v1, p0, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/K;-><init>(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;)Lcom/google/ipc/invalidation/ticl/a/K;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/K;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/K;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 337
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/K;->b:J

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
    .line 336
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 356
    const-string/jumbo v0, "<RunStateP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 357
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/K;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, " state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 360
    :cond_0
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 361
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/K;->b:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 349
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/K;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    add-int/2addr v0, v1

    .line 352
    :cond_0
    return v0
.end method

.method final c()Lcom/google/a/a/a/a/f;
    .locals 2

    .prologue
    .line 383
    new-instance v1, Lcom/google/a/a/a/a/f;

    invoke-direct {v1}, Lcom/google/a/a/a/a/f;-><init>()V

    .line 384
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/K;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/google/a/a/a/a/f;->a:Ljava/lang/Integer;

    .line 385
    return-object v1

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    if-ne p0, p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/K;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 342
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/K;

    .line 343
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/K;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/K;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/K;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/K;->c:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
