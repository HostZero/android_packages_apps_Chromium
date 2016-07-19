.class final Lcom/google/android/gms/measurement/internal/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/S;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:J

.field private t:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/S;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ah;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    return-void
.end method

.method public final a(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->g:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->g:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ah;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ah;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->m:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/ah;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->h:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->h:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ah;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ah;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->k:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->k:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ah;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ah;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->l:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->l:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ah;->i:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ah;->i:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/ah;->f:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->f:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ah;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ah;->j:Ljava/lang/String;

    return-void
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->g:J

    return-wide v0
.end method

.method public final f(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->s:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->s:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->h:J

    return-wide v0
.end method

.method public final g(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->t:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->t:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->n:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->n:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->o:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->o:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->k:J

    return-wide v0
.end method

.method public final j(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->p:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->p:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->l:J

    return-wide v0
.end method

.method public final k(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ah;->q:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ah;->q:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ah;->m:Z

    return v0
.end method

.method public final m()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->f:J

    return-wide v0
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->s:J

    return-wide v0
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->t:J

    return-wide v0
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Bundle index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ah;->r:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->f:J

    return-void
.end method

.method public final q()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->n:J

    return-wide v0
.end method

.method public final r()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->o:J

    return-wide v0
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->p:J

    return-wide v0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ah;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->v()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ah;->q:J

    return-wide v0
.end method
