.class final Lcom/google/ipc/invalidation/ticl/z;
.super Ljava/lang/Object;
.source "InvalidationClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/x;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/x;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/z;->a:Lcom/google/ipc/invalidation/ticl/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/z;->a:Lcom/google/ipc/invalidation/ticl/x;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/x;->b(Lcom/google/ipc/invalidation/ticl/x;)V

    .line 88
    return-void
.end method
