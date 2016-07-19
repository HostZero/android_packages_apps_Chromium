.class public Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
.super Ljava/lang/Object;
.source "SystemResourcesBuilder.java"


# instance fields
.field private internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

.field private platform:Ljava/lang/String;

.field private sealed:Z

.field private storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 49
    iput-object p2, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 50
    iput-object p3, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 51
    iput-object p4, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    .line 52
    iput-object p5, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 58
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 59
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 60
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    .line 61
    iget-object v0, p1, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    .line 63
    return-void
.end method


# virtual methods
.method public build()Lcom/google/ipc/invalidation/external/client/SystemResources;
    .locals 7

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->seal()V

    .line 165
    new-instance v0, Lcom/google/ipc/invalidation/ticl/b;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iget-object v3, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iget-object v4, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    iget-object v5, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    iget-object v6, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->platform:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/b;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;Ljava/lang/String;)V

    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method

.method public getListenerScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method

.method public getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-object v0
.end method

.method public getNetwork()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    return-object v0
.end method

.method public getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    return-object v0
.end method

.method protected seal()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v2, "Builder\'s already sealed"

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 172
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInternalScheduler(Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;)Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 97
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->internalScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 98
    return-object p0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListenerScheduler(Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;)Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 108
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->listenerScheduler:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 109
    return-object p0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogger(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 119
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->logger:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 120
    return-object p0

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetwork(Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;)Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->network:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    .line 131
    return-object p0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlatform(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 152
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->platform:Ljava/lang/String;

    .line 153
    return-object p0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStorage(Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;)Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Builder\'s build method has already been called"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 141
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/SystemResourcesBuilder;->storage:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 142
    return-object p0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
