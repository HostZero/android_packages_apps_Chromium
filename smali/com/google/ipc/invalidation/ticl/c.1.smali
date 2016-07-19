.class final Lcom/google/ipc/invalidation/ticl/c;
.super Ljava/lang/Object;
.source "CheckingInvalidationListener.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/InvalidationListener;


# instance fields
.field private final a:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private final c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private d:Lcom/google/ipc/invalidation/ticl/aa;

.field private final e:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/external/client/InvalidationListener;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "Delegate cannot be null"

    invoke-static {p1, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->a:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    .line 58
    const-string/jumbo v0, "Internal scheduler cannot be null"

    invoke-static {p2, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 60
    const-string/jumbo v0, "Listener scheduler cannot be null"

    invoke-static {p3, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 62
    const-string/jumbo v0, "Logger cannot be null"

    invoke-static {p4, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/ticl/aa;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->d:Lcom/google/ipc/invalidation/ticl/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/external/client/InvalidationListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->a:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ipc/invalidation/ticl/c;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/ipc/invalidation/ticl/aa;)V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "Statistics cannot be null"

    invoke-static {p1, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/aa;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->d:Lcom/google/ipc/invalidation/ticl/aa;

    .line 67
    return-void
.end method

.method public final informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/j;

    const-string/jumbo v3, "CheckingInvalListener.informError"

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/google/ipc/invalidation/ticl/j;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public final informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 115
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v8, 0x0

    new-instance v0, Lcom/google/ipc/invalidation/ticl/g;

    const-string/jumbo v2, "CheckingInvalListener.regFailure"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/g;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    invoke-interface {v7, v8, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public final informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V
    .locals 8

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 128
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/ipc/invalidation/ticl/h;

    const-string/jumbo v2, "CheckingInvalListener.regStatus"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/h;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V

    invoke-interface {v6, v7, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final invalidate(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 8

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 73
    invoke-static {p3}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/ipc/invalidation/ticl/d;

    const-string/jumbo v2, "CheckingInvalListener.invalidate"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/d;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    invoke-interface {v6, v7, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public final invalidateAll(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 101
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/f;

    const-string/jumbo v3, "CheckingInvalListener.invalidateAll"

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/google/ipc/invalidation/ticl/f;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public final invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 8

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 87
    invoke-static {p3}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/ipc/invalidation/ticl/e;

    const-string/jumbo v2, "CheckingInvalListener.invalidateUnknownVersion"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/e;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    invoke-interface {v6, v7, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public final ready(Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/k;

    const-string/jumbo v3, "CheckingInvalListener.ready"

    invoke-direct {v2, p0, v3, p1}, Lcom/google/ipc/invalidation/ticl/k;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public final reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V
    .locals 8

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/c;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 141
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/c;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/ipc/invalidation/ticl/i;

    const-string/jumbo v2, "CheckingInvalListener.reissueRegs"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/i;-><init>(Lcom/google/ipc/invalidation/ticl/c;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V

    invoke-interface {v6, v7, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 148
    return-void
.end method
