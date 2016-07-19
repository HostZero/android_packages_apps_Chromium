.class public final Lcom/google/android/gms/measurement/internal/M;
.super Lcom/google/android/gms/measurement/internal/ag;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->a:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->b:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/google/android/gms/b/p;)Ljava/util/Map;
    .locals 6

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/p;->c:[Lcom/google/android/gms/b/q;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/b/p;->c:[Lcom/google/android/gms/b/q;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/b/q;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/b/q;->b:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b(Ljava/lang/String;[B)Lcom/google/android/gms/b/p;
    .locals 5

    if-nez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/b/p;

    invoke-direct {v0}, Lcom/google/android/gms/b/p;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/b/J;->a([B)Lcom/google/android/gms/b/J;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/b/p;

    invoke-direct {v0}, Lcom/google/android/gms/b/p;-><init>()V

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/p;->b(Lcom/google/android/gms/b/J;)Lcom/google/android/gms/b/p;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Parsed config. version, gmp_app_id"

    iget-object v3, v0, Lcom/google/android/gms/b/p;->a:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/android/gms/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Unable to merge remote config"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/b/p;)Ljava/util/Map;
    .locals 6

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/p;->d:[Lcom/google/android/gms/b/o;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/b/p;->d:[Lcom/google/android/gms/b/o;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/b/o;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/b/o;->b:Ljava/lang/Boolean;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/M;->E()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->k()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;[B)Lcom/google/android/gms/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/M;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/M;->a(Lcom/google/android/gms/b/p;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/M;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/M;->b(Lcom/google/android/gms/b/p;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/M;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/google/android/gms/b/p;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/M;->E()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/p;

    return-object v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    return-void
.end method

.method protected final a(Ljava/lang/String;[B)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/M;->E()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;[B)Lcom/google/android/gms/b/p;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/M;->b(Lcom/google/android/gms/b/p;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->a:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/M;->a(Lcom/google/android/gms/b/p;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->d()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/b/p;->e:[Lcom/google/android/gms/b/i;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->k()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;[Lcom/google/android/gms/b/i;)V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v1, Lcom/google/android/gms/b/p;->e:[Lcom/google/android/gms/b/i;

    invoke-virtual {v1}, Lcom/google/android/gms/b/p;->d()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/b/K;->a([B)Lcom/google/android/gms/b/K;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/p;->a(Lcom/google/android/gms/b/K;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->k()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Unable to serialize reduced-size config.  Storing full config instead."

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->b()V

    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
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
