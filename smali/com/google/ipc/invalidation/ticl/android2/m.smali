.class final Lcom/google/ipc/invalidation/ticl/android2/m;
.super Ljava/lang/Object;
.source "TiclService.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/types/Callback;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/android2/l;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/android2/l;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/m;->a:Lcom/google/ipc/invalidation/ticl/android2/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 298
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/Status;

    .line 1301
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/Status;->getCode()Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    move-result-object v0

    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->SUCCESS:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    if-eq v0, v1, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/m;->a:Lcom/google/ipc/invalidation/ticl/android2/l;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/android2/l;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/ticl/android2/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Failed saving rewritten persistent state to storage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_0
    return-void
.end method
