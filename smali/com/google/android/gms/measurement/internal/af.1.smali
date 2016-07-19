.class Lcom/google/android/gms/measurement/internal/af;
.super Ljava/lang/Object;


# instance fields
.field protected final m:Lcom/google/android/gms/measurement/internal/S;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on package side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    return-void
.end method

.method public d()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->u()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->k()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/android/gms/measurement/internal/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->t()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->s()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->r()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->q()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/measurement/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/android/gms/measurement/internal/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/android/gms/measurement/internal/ay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->h()Lcom/google/android/gms/measurement/internal/ay;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/android/gms/measurement/internal/O;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/google/android/gms/measurement/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/android/gms/measurement/internal/I;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->c()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method
