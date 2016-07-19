.class public final Lcom/google/ipc/invalidation/ticl/a/af;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 1238
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1239
    const-string/jumbo v0, "registration"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/af;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    .line 1240
    return-void
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/af;
    .locals 1

    .prologue
    .line 1233
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/af;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/af;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/x;
    .locals 4

    .prologue
    .line 1287
    new-instance v2, Lcom/google/a/a/a/a/x;

    invoke-direct {v2}, Lcom/google/a/a/a/a/x;-><init>()V

    .line 1288
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/y;

    iput-object v0, v2, Lcom/google/a/a/a/a/x;->a:[Lcom/google/a/a/a/a/y;

    .line 1289
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/a/a/a/a/x;->a:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1290
    iget-object v3, v2, Lcom/google/a/a/a/a/x;->a:[Lcom/google/a/a/a/a/y;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ag;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->d()Lcom/google/a/a/a/a/y;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1292
    :cond_0
    return-object v2
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1258
    const-string/jumbo v0, "<RegistrationMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1259
    const-string/jumbo v0, " registration=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1260
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1261
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1254
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1245
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 1248
    :goto_0
    return v0

    .line 1246
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/af;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1247
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/af;

    .line 1248
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/af;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
