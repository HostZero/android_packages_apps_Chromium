.class final Lcom/google/ipc/invalidation/ticl/s;
.super Lcom/google/ipc/invalidation/ticl/w;
.source "InvalidationClientCore.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/m;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 334
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/s;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 335
    const-string/jumbo v2, "InitialPersistentHeartbeat"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;IIZ)V

    .line 336
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/s;->a:Lcom/google/ipc/invalidation/ticl/m;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;ZZ)V

    .line 341
    return v2
.end method
