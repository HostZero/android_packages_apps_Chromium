.class public final Lcom/google/ipc/invalidation/ticl/a/w;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1296
    const-string/jumbo v0, "error_code"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/w;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    .line 1298
    const-string/jumbo v0, "error_message"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/w;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1299
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    .line 1300
    const-string/jumbo v0, "is_transient"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/w;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1301
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    .line 1302
    return-void
.end method

.method public static a(ILjava/lang/String;Z)Lcom/google/ipc/invalidation/ticl/a/w;
    .locals 3

    .prologue
    .line 1286
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/w;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ipc/invalidation/ticl/a/w;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/w;)Lcom/google/ipc/invalidation/ticl/a/w;
    .locals 4

    .prologue
    .line 1346
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1347
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/w;

    iget-object v1, p0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/w;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1328
    const-string/jumbo v0, "<ErrorUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1329
    const-string/jumbo v0, " error_code="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 1330
    const-string/jumbo v0, " error_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1331
    const-string/jumbo v0, " is_transient="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 1332
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1333
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 1322
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/w;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1324
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1308
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    return v0
.end method

.method final e()Lcom/google/a/a/a/w;
    .locals 2

    .prologue
    .line 1357
    new-instance v0, Lcom/google/a/a/a/w;

    invoke-direct {v0}, Lcom/google/a/a/a/w;-><init>()V

    .line 1358
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/w;->a:Ljava/lang/Integer;

    .line 1359
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/a/a/w;->b:Ljava/lang/String;

    .line 1360
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/w;->c:Ljava/lang/Boolean;

    .line 1361
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1311
    if-ne p0, p1, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return v0

    .line 1312
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/w;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1313
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/w;

    .line 1314
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/w;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/w;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/w;->c:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
