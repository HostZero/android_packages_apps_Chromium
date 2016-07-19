.class final Lcom/google/ipc/invalidation/ticl/L;
.super Lcom/google/ipc/invalidation/b/h;
.source "ProtocolHandler.java"


# instance fields
.field a:Lcom/google/ipc/invalidation/b/c;

.field b:Lcom/google/ipc/invalidation/ticl/a/ak;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    .line 311
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/L;->b:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 312
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 322
    const-string/jumbo v0, "Token: %s, Summary: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/L;->b:Lcom/google/ipc/invalidation/ticl/a/ak;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/r;

    .line 323
    return-void
.end method
