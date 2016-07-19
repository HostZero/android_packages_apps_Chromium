.class public interface abstract Lcom/google/ipc/invalidation/external/client/SystemResources;
.super Ljava/lang/Object;
.source "SystemResources.java"


# virtual methods
.method public abstract getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
.end method

.method public abstract getListenerScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
.end method

.method public abstract getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
.end method

.method public abstract getNetwork()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;
.end method

.method public abstract getPlatform()Ljava/lang/String;
.end method

.method public abstract getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;
.end method

.method public abstract isStarted()Z
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
