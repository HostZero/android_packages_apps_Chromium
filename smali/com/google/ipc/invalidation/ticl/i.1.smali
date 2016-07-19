.class final Lcom/google/ipc/invalidation/ticl/i;
.super Lcom/google/ipc/invalidation/b/m;
.source "CheckingInvalidationListener.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

.field private synthetic b:[B

.field private synthetic c:I

.field private synthetic d:Lcom/google/ipc/invalidation/ticl/c;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/i;->d:Lcom/google/ipc/invalidation/ticl/c;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/i;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/i;->b:[B

    iput p5, p0, Lcom/google/ipc/invalidation/ticl/i;->c:I

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/i;->d:Lcom/google/ipc/invalidation/ticl/c;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/c;->a(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/ticl/aa;

    move-result-object v0

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->g:Lcom/google/ipc/invalidation/ticl/ad;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ad;)V

    .line 145
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/i;->d:Lcom/google/ipc/invalidation/ticl/c;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/c;->b(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/i;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/i;->b:[B

    iget v3, p0, Lcom/google/ipc/invalidation/ticl/i;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V

    .line 146
    return-void
.end method
