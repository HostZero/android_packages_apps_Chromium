.class final Lcom/google/ipc/invalidation/ticl/android2/l;
.super Ljava/lang/Object;
.source "TiclService.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/types/Callback;


# instance fields
.field final synthetic a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 1277
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    check-cast v0, [B

    .line 1278
    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/ticl/android2/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "No persistent state found for client; not rewriting"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1289
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/ticl/android2/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->b(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/a/a;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/support/customtabs/a;->deserializeState(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;[BLcom/google/ipc/invalidation/a/a;)Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v1

    .line 1286
    if-nez v1, :cond_1

    .line 1287
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/ticl/android2/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v2, "Ignoring invalid Ticl state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1291
    :cond_1
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/J;->d()Lcom/google/ipc/invalidation/ticl/a/F;

    move-result-object v0

    .line 1292
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/F;->b:Ljava/lang/Long;

    .line 1293
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/F;->a()Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->b(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->serializeState(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/a/a;)[B

    move-result-object v0

    .line 1297
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/ticl/android2/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    move-result-object v1

    const-string/jumbo v2, "ClientToken"

    new-instance v3, Lcom/google/ipc/invalidation/ticl/android2/m;

    invoke-direct {v3, p0}, Lcom/google/ipc/invalidation/ticl/android2/m;-><init>(Lcom/google/ipc/invalidation/ticl/android2/l;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->writeKey(Ljava/lang/String;[BLcom/google/ipc/invalidation/external/client/types/Callback;)V

    goto :goto_0
.end method
