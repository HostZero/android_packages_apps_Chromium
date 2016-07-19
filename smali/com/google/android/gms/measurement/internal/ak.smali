.class final Lcom/google/android/gms/measurement/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/aj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/aj;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ak;-><init>(Lcom/google/android/gms/measurement/internal/aj;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "gclid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Activity created with data \'referrer\' param without gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Activity created with referrer"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    const-string/jumbo v2, "auto"

    const-string/jumbo v3, "_ldl"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->n()Lcom/google/android/gms/measurement/internal/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ay;->i()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/b/a;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ay;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/measurement/internal/aE;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/aE;-><init>(Lcom/google/android/gms/measurement/internal/ay;J)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ak;->a:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->n()Lcom/google/android/gms/measurement/internal/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ay;->t()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
