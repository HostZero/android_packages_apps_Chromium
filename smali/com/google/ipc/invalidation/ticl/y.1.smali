.class final Lcom/google/ipc/invalidation/ticl/y;
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
    .line 74
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/y;->a:Lcom/google/ipc/invalidation/ticl/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/y;->a:Lcom/google/ipc/invalidation/ticl/x;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/x;->a(Lcom/google/ipc/invalidation/ticl/x;)V

    .line 78
    return-void
.end method
