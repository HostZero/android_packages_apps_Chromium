.class public abstract Lcom/google/ipc/invalidation/ticl/M;
.super Lcom/google/ipc/invalidation/b/h;
.source "RecurringTask.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private final c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private final d:I

.field private final e:I

.field private final f:Lcom/google/ipc/invalidation/b/q;

.field private final g:Lcom/google/ipc/invalidation/ticl/ai;

.field private final h:Lcom/google/ipc/invalidation/b/m;

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;II)V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 126
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/M;->g:Lcom/google/ipc/invalidation/ticl/ai;

    .line 127
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->a:Ljava/lang/String;

    .line 128
    invoke-static {p3}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 129
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 130
    invoke-static {p4}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/b/q;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->f:Lcom/google/ipc/invalidation/b/q;

    .line 131
    iput p6, p0, Lcom/google/ipc/invalidation/ticl/M;->d:I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    .line 133
    iput p7, p0, Lcom/google/ipc/invalidation/ticl/M;->e:I

    .line 1153
    new-instance v0, Lcom/google/ipc/invalidation/ticl/N;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/M;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/N;-><init>(Lcom/google/ipc/invalidation/ticl/M;Ljava/lang/String;)V

    .line 137
    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->h:Lcom/google/ipc/invalidation/b/m;

    .line 138
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 8

    .prologue
    .line 147
    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/aw;->a()I

    move-result v6

    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/aw;->c()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/M;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;II)V

    .line 149
    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/aw;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/M;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/M;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/google/ipc/invalidation/ticl/M;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 212
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 213
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "[%s] Not scheduling task that is already scheduled"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :goto_0
    return-void

    .line 219
    :cond_0
    if-eqz p1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->g:Lcom/google/ipc/invalidation/ticl/ai;

    if-eqz v0, :cond_1

    .line 223
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/M;->e:I

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/M;->g:Lcom/google/ipc/invalidation/ticl/ai;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/ai;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/M;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "[%s] Scheduling %s with a delay %s, Now = %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/M;->a:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/M;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/M;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/M;->h:Lcom/google/ipc/invalidation/b/m;

    invoke-interface {v1, v0, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 234
    iput-boolean v8, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    goto :goto_0

    .line 225
    :cond_1
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/M;->e:I

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/M;->f:Lcom/google/ipc/invalidation/b/q;

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/M;->d:I

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/b/q;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->f:Lcom/google/ipc/invalidation/b/q;

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/M;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/q;->a(I)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/M;Z)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/M;)Lcom/google/ipc/invalidation/ticl/ai;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->g:Lcom/google/ipc/invalidation/ticl/ai;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ipc/invalidation/ticl/M;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/M;->d:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v0, "<RecurringTask: name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/M;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ", initialDelayMs="

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/M;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ", timeoutDelayMs="

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/M;->e:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ", isScheduled="

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 256
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/ipc/invalidation/ticl/M;->a(ZLjava/lang/String;)V

    .line 197
    return-void
.end method

.method public abstract a()Z
.end method

.method final b()Lcom/google/ipc/invalidation/b/q;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->f:Lcom/google/ipc/invalidation/b/q;

    return-object v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/m;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->h:Lcom/google/ipc/invalidation/b/m;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->g:Lcom/google/ipc/invalidation/ticl/ai;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 246
    :goto_0
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/M;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/M;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/M;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/M;->g:Lcom/google/ipc/invalidation/ticl/ai;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/ai;->a()Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v0

    goto :goto_0
.end method
