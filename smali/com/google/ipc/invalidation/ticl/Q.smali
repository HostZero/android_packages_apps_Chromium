.class public final Lcom/google/ipc/invalidation/ticl/Q;
.super Ljava/lang/Object;
.source "SafeStorage.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;


# instance fields
.field private final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

.field private b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/Q;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method


# virtual methods
.method public final deleteKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    new-instance v1, Lcom/google/ipc/invalidation/ticl/V;

    invoke-direct {v1, p0, p2}, Lcom/google/ipc/invalidation/ticl/V;-><init>(Lcom/google/ipc/invalidation/ticl/Q;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->deleteKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    .line 95
    return-void
.end method

.method public final readAllKeys(Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    new-instance v1, Lcom/google/ipc/invalidation/ticl/X;

    invoke-direct {v1, p0, p1}, Lcom/google/ipc/invalidation/ticl/X;-><init>(Lcom/google/ipc/invalidation/ticl/Q;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->readAllKeys(Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    .line 110
    return-void
.end method

.method public final readKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    new-instance v1, Lcom/google/ipc/invalidation/ticl/T;

    invoke-direct {v1, p0, p2}, Lcom/google/ipc/invalidation/ticl/T;-><init>(Lcom/google/ipc/invalidation/ticl/Q;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->readKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    .line 80
    return-void
.end method

.method public final setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V
    .locals 1

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 50
    return-void
.end method

.method public final writeKey(Ljava/lang/String;[BLcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Q;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    new-instance v1, Lcom/google/ipc/invalidation/ticl/R;

    invoke-direct {v1, p0, p3}, Lcom/google/ipc/invalidation/ticl/R;-><init>(Lcom/google/ipc/invalidation/ticl/Q;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->writeKey(Ljava/lang/String;[BLcom/google/ipc/invalidation/external/client/types/Callback;)V

    .line 65
    return-void
.end method
