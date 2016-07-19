.class public interface abstract Lcom/google/ipc/invalidation/external/client/InvalidationClient;
.super Ljava/lang/Object;
.source "InvalidationClient.java"


# virtual methods
.method public abstract acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
.end method

.method public abstract register(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
.end method

.method public abstract register(Ljava/util/Collection;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unregister(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
.end method

.method public abstract unregister(Ljava/util/Collection;)V
.end method
