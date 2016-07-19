.class public final Lcom/google/android/gms/common/api/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a/N;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/a/O;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/r;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/r;)Lcom/google/android/gms/common/api/a/O;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/a/F;->a(Lcom/google/android/gms/common/api/a/K;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a/K;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/F;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->n()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a/K;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a/K;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a/K;->b(Lcom/google/android/gms/common/api/e;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    new-instance v1, Lcom/google/android/gms/common/api/a/s;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/a/s;-><init>(Lcom/google/android/gms/common/api/a/r;Lcom/google/android/gms/common/api/a/N;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/api/a/P;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->e:Lcom/google/android/gms/common/api/a/c;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/a/r;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/a/c;->a(IZ)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/r;->b:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a/F;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/r;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/F;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a/g;->b()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/r;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/r;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/r;->a:Lcom/google/android/gms/common/api/a/O;

    new-instance v1, Lcom/google/android/gms/common/api/a/t;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/a/t;-><init>(Lcom/google/android/gms/common/api/a/r;Lcom/google/android/gms/common/api/a/N;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/api/a/P;)V

    :cond_0
    return-void
.end method
