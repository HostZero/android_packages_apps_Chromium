.class final Lcom/google/ipc/invalidation/ticl/S;
.super Lcom/google/ipc/invalidation/b/m;
.source "SafeStorage.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/types/Status;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/R;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/R;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Status;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/S;->b:Lcom/google/ipc/invalidation/ticl/R;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/S;->a:Lcom/google/ipc/invalidation/external/client/types/Status;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/S;->b:Lcom/google/ipc/invalidation/ticl/R;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/R;->a:Lcom/google/ipc/invalidation/external/client/types/Callback;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/S;->a:Lcom/google/ipc/invalidation/external/client/types/Status;

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
