.class final Lcom/google/ipc/invalidation/ticl/W;
.super Lcom/google/ipc/invalidation/b/m;
.source "SafeStorage.java"


# instance fields
.field private synthetic a:Ljava/lang/Boolean;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/V;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/V;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/W;->b:Lcom/google/ipc/invalidation/ticl/V;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/W;->a:Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/W;->b:Lcom/google/ipc/invalidation/ticl/V;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/V;->a:Lcom/google/ipc/invalidation/external/client/types/Callback;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/W;->a:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
