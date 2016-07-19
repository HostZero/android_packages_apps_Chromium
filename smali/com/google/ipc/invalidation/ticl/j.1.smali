.class final Lcom/google/ipc/invalidation/ticl/j;
.super Lcom/google/ipc/invalidation/b/m;
.source "CheckingInvalidationListener.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

.field private synthetic b:Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

.field private synthetic c:Lcom/google/ipc/invalidation/ticl/c;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/j;->c:Lcom/google/ipc/invalidation/ticl/c;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/j;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/j;->b:Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/j;->c:Lcom/google/ipc/invalidation/ticl/c;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/c;->a(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/ticl/aa;

    move-result-object v0

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->a:Lcom/google/ipc/invalidation/ticl/ad;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ad;)V

    .line 157
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/j;->c:Lcom/google/ipc/invalidation/ticl/c;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/c;->b(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/j;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/j;->b:Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V

    .line 158
    return-void
.end method
