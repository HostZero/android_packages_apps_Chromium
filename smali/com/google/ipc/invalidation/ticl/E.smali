.class final Lcom/google/ipc/invalidation/ticl/E;
.super Ljava/lang/Object;
.source "InvalidationClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/types/AckHandle;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/x;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/E;->b:Lcom/google/ipc/invalidation/ticl/x;

    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/E;->a:Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/E;->b:Lcom/google/ipc/invalidation/ticl/x;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/E;->a:Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/x;->a(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    .line 138
    return-void
.end method
