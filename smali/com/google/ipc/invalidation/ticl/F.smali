.class final Lcom/google/ipc/invalidation/ticl/F;
.super Ljava/lang/Object;
.source "InvalidationClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[B

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/x;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/x;[B)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/F;->b:Lcom/google/ipc/invalidation/ticl/x;

    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/F;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/F;->b:Lcom/google/ipc/invalidation/ticl/x;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/F;->a:[B

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/x;->a(Lcom/google/ipc/invalidation/ticl/x;[B)V

    .line 150
    return-void
.end method
