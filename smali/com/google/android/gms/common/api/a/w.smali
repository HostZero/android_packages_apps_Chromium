.class final Lcom/google/android/gms/common/api/a/w;
.super Lcom/google/android/gms/common/api/a/A;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/a/u;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/u;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/a/A;-><init>(Lcom/google/android/gms/common/api/a/u;B)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/w;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/api/a/u;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/j;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->d(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/a/C;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/common/api/a/C;-><init>(Lcom/google/android/gms/common/api/a/w;Lcom/google/android/gms/common/api/a/N;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/api/a/P;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->e(Lcom/google/android/gms/common/api/a/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->f(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/b/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/F;->b_()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/w;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/w;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/k;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/k;)V

    goto :goto_0
.end method
