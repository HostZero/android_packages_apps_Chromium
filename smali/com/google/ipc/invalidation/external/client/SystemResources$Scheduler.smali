.class public interface abstract Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
.super Ljava/lang/Object;
.source "SystemResources.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$ResourceComponent;


# static fields
.field public static final NO_DELAY:I


# virtual methods
.method public abstract getCurrentTimeMs()J
.end method

.method public abstract isRunningOnThread()Z
.end method

.method public abstract schedule(ILjava/lang/Runnable;)V
.end method
