.class public final Lcom/google/android/gms/measurement/internal/ay;
.super Lcom/google/android/gms/measurement/internal/ag;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/google/android/gms/measurement/internal/k;

.field private final e:Lcom/google/android/gms/measurement/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/az;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/az;-><init>(Lcom/google/android/gms/measurement/internal/ay;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/measurement/internal/aB;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ay;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/aB;-><init>(Lcom/google/android/gms/measurement/internal/ay;Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->d:Lcom/google/android/gms/measurement/internal/k;

    new-instance v0, Lcom/google/android/gms/measurement/internal/aC;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ay;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/aC;-><init>(Lcom/google/android/gms/measurement/internal/ay;Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->e:Lcom/google/android/gms/measurement/internal/k;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ay;)V
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->b()J

    move-result-wide v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->i:Lcom/google/android/gms/measurement/internal/J;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/J;->a(Z)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->e()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ay;J)V
    .locals 9

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/ay;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->d:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->e:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/I;->h:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/I;->j:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->i:Lcom/google/android/gms/measurement/internal/J;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/J;->a(Z)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->i:Lcom/google/android/gms/measurement/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/J;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->d:Lcom/google/android/gms/measurement/internal/k;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->g:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/k;->a(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->e:Lcom/google/android/gms/measurement/internal/k;

    const-wide/32 v2, 0x36ee80

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/k;->a(J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/ay;)V
    .locals 12

    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    sub-long v2, v0, v10

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v4

    const-string/jumbo v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->e()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v2

    const-string/jumbo v3, "auto"

    const-string/jumbo v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->e:Lcom/google/android/gms/measurement/internal/k;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/k;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/ay;J)V
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/ay;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->d:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->e:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/ay;->b:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->j:Lcom/google/android/gms/measurement/internal/K;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->i:Lcom/google/android/gms/measurement/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/J;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ay;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private v()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->a:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->d()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->e()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/w;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->f()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->g()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->h()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/b/a;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/g;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->k()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/measurement/internal/M;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->m()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/measurement/internal/ay;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->n()Lcom/google/android/gms/measurement/internal/ay;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/O;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/y;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/I;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->r()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method

.method protected final s()V
    .locals 0

    return-void
.end method

.method protected final t()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/ay;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ay;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ay;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->b()J

    move-result-wide v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/aD;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/aD;-><init>(Lcom/google/android/gms/measurement/internal/ay;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final u()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Application backgrounded. Logging engagement"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "_et"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->e()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v3, "_e"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->k:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Not logging non-positive engagement time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
