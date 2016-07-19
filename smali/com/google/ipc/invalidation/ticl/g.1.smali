.class final Lcom/google/ipc/invalidation/ticl/g;
.super Lcom/google/ipc/invalidation/b/m;
.source "CheckingInvalidationListener.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

.field private synthetic b:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

.field private synthetic c:Z

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/google/ipc/invalidation/ticl/c;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/g;->e:Lcom/google/ipc/invalidation/ticl/c;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/g;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/g;->b:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    iput-boolean p5, p0, Lcom/google/ipc/invalidation/ticl/g;->c:Z

    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/g;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/g;->e:Lcom/google/ipc/invalidation/ticl/c;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/c;->a(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/ticl/aa;

    move-result-object v0

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ad;->b:Lcom/google/ipc/invalidation/ticl/ad;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ad;)V

    .line 119
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/g;->e:Lcom/google/ipc/invalidation/ticl/c;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/c;->b(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/g;->a:Lcom/google/ipc/invalidation/external/client/InvalidationClient;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/g;->b:Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    iget-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/g;->c:Z

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    .line 120
    return-void
.end method
