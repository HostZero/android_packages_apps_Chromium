.class public final Lcom/google/ipc/invalidation/ticl/a/Z;
.super Ljava/lang/Object;
.source "ClientProtocol.java"


# instance fields
.field public a:Lcom/google/ipc/invalidation/b/c;

.field public b:Ljava/lang/Boolean;

.field private c:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;ZJ)V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->c:Lcom/google/ipc/invalidation/ticl/a/aa;

    iput-boolean p2, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->d:Z

    iput-wide p3, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->e:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/Y;
    .locals 7

    .prologue
    .line 520
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->c:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->a:Lcom/google/ipc/invalidation/b/c;

    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/a/Z;->b:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/Y;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;B)V

    return-object v0
.end method
