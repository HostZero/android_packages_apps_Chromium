.class public interface abstract Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;
.super Ljava/lang/Object;
.source "SystemResources.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$ResourceComponent;


# virtual methods
.method public abstract deleteKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
.end method

.method public abstract readAllKeys(Lcom/google/ipc/invalidation/external/client/types/Callback;)V
.end method

.method public abstract readKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
.end method

.method public abstract writeKey(Ljava/lang/String;[BLcom/google/ipc/invalidation/external/client/types/Callback;)V
.end method
