.class public interface abstract Lcom/google/ipc/invalidation/external/client/InvalidationListener;
.super Ljava/lang/Object;
.source "InvalidationListener.java"


# virtual methods
.method public abstract informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
.end method

.method public abstract informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
.end method

.method public abstract informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V
.end method

.method public abstract invalidate(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
.end method

.method public abstract invalidateAll(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
.end method

.method public abstract invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
.end method

.method public abstract ready(Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V
.end method

.method public abstract reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V
.end method
