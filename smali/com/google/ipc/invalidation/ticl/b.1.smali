.class public Lcom/google/ipc/invalidation/ticl/b;
.super Ljava/lang/Object;
.source "BasicSystemResources.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources;


# instance fields
.field private final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private final c:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private final d:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

.field private final e:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

.field private f:Lcom/google/ipc/invalidation/ticl/P;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/ipc/invalidation/ticl/P;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/ticl/P;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->f:Lcom/google/ipc/invalidation/ticl/P;

    .line 56
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/b;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 57
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/b;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 58
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/b;->d:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    .line 59
    if-eqz p6, :cond_0

    .line 60
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/b;->g:Ljava/lang/String;

    .line 67
    :goto_0
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/b;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 68
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/b;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 72
    invoke-interface {p1, p0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 73
    invoke-interface {p5, p0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 74
    invoke-interface {p4, p0}, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;->setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 75
    invoke-interface {p2, p0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 76
    invoke-interface {p3, p0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 77
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->g:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method

.method public getListenerScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method

.method public getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-object v0
.end method

.method public getNetwork()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->d:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->f:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->c()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->f:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->a()V

    .line 82
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Resources started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->f:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->b()V

    .line 88
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/b;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Resources stopped"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method
