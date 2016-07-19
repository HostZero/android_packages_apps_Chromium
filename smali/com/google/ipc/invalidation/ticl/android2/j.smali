.class public final Lcom/google/ipc/invalidation/ticl/android2/j;
.super Lcom/google/ipc/invalidation/ticl/b;
.source "ResourcesFactory.java"


# instance fields
.field private a:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/ipc/invalidation/ticl/android2/a;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 75
    invoke-static {p3}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forPrefix(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v1

    new-instance v2, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    invoke-direct {v2, p1, p2}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/ticl/android2/a;)V

    new-instance v3, Lcom/google/ipc/invalidation/ticl/android2/k;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/ipc/invalidation/ticl/android2/k;-><init>(B)V

    new-instance v4, Lcom/google/ipc/invalidation/ticl/android2/channel/d;

    invoke-direct {v4, p1}, Lcom/google/ipc/invalidation/ticl/android2/channel/d;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/ipc/invalidation/ticl/android2/f;

    invoke-direct {v5, p1}, Lcom/google/ipc/invalidation/ticl/android2/f;-><init>(Landroid/content/Context;)V

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Android-"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/b;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/ipc/invalidation/ticl/android2/a;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/android2/j;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/ticl/android2/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/j;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    const-string/jumbo v1, "network listener not yet set"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/j;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Listener already set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/j;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    .line 105
    return-void
.end method
