.class public abstract Lcom/google/ipc/invalidation/b/h;
.super Ljava/lang/Object;
.source "InternalBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/ipc/invalidation/b/r;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/ipc/invalidation/b/r;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/b/r;-><init>()V

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/b/h;->a(Lcom/google/ipc/invalidation/b/r;)V

    .line 49
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
