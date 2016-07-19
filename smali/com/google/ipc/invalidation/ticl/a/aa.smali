.class public final Lcom/google/ipc/invalidation/ticl/a/aa;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 361
    const-string/jumbo v0, "source"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string/jumbo v0, "source"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Ljava/lang/String;I)V

    .line 363
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    .line 364
    const-string/jumbo v0, "name"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    .line 366
    return-void
.end method

.method public static a(ILcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/ipc/invalidation/ticl/a/aa;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 3

    .prologue
    .line 405
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v1, p0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/s;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/aa;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 388
    const-string/jumbo v0, "<ObjectIdP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 389
    const-string/jumbo v0, " source="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 390
    const-string/jumbo v0, " name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 391
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 392
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 383
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method final d()Lcom/google/a/a/a/a/s;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lcom/google/a/a/a/a/s;

    invoke-direct {v0}, Lcom/google/a/a/a/a/s;-><init>()V

    .line 416
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/s;->a:Ljava/lang/Integer;

    .line 417
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/s;->b:[B

    .line 418
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    if-ne p0, p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/aa;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 375
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 376
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/aa;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/aa;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
