.class Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildClass:Ljava/lang/Class;

.field private final mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

.field private final mConnectionLock:Ljava/lang/Object;

.field private final mFreeConnectionIndices:Ljava/util/ArrayList;

.field private final mInSandbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZI)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    .line 125
    new-array v0, p2, [Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 128
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    const-class v0, Lorg/chromium/content/app/SandboxedProcessService;

    :goto_1
    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildClass:Ljava/lang/Class;

    .line 132
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    .line 133
    return-void

    .line 130
    :cond_1
    const-class v0, Lorg/chromium/content/app/PrivilegedProcessService;

    goto :goto_1
.end method


# virtual methods
.method public allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 11

    .prologue
    .line 140
    iget-object v9, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    monitor-exit v9

    .line 152
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_1
    :try_start_1
    iget-object v10, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    iget-boolean v3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    iget-object v5, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildClass:Ljava/lang/Class;

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;-><init>(Landroid/content/Context;IZLorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Ljava/lang/Class;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    aput-object v0, v10, v2

    .line 150
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method allocatedConnectionsCountForTesting()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    array-length v0, v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public free(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 7

    .prologue
    .line 157
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v2

    .line 159
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    if-eq v0, p1, :cond_1

    .line 160
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 162
    :goto_0
    const-string/jumbo v3, "ChildProcLauncher"

    const-string/jumbo v4, "Unable to find connection to free in slot: %d already occupied by service: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 167
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public isFreeConnectionAvailable()Z
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
