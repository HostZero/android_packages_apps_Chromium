.class public Lcom/google/ipc/invalidation/ticl/a/F;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field public a:Lcom/google/ipc/invalidation/b/c;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    return-void
.end method


# virtual methods
.method public a()Lcom/google/ipc/invalidation/ticl/a/J;
    .locals 4

    .prologue
    .line 1105
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/J;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/F;->a:Lcom/google/ipc/invalidation/b/c;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/F;->b:Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/J;-><init>(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;B)V

    return-object v0
.end method
