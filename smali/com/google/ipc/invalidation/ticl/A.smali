.class final Lcom/google/ipc/invalidation/ticl/A;
.super Ljava/lang/Object;
.source "InvalidationClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/x;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/A;->b:Lcom/google/ipc/invalidation/ticl/x;

    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/A;->a:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/A;->b:Lcom/google/ipc/invalidation/ticl/x;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/A;->a:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/x;->a(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    .line 98
    return-void
.end method
