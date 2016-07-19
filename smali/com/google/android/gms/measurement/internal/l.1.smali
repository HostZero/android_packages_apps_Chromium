.class final Lcom/google/android/gms/measurement/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l;->a:Lcom/google/android/gms/measurement/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->a:Lcom/google/android/gms/measurement/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k;->a(Lcom/google/android/gms/measurement/internal/k;)Lcom/google/android/gms/measurement/internal/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->a:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l;->a:Lcom/google/android/gms/measurement/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/k;->b(Lcom/google/android/gms/measurement/internal/k;)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->a:Lcom/google/android/gms/measurement/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k;->c(Lcom/google/android/gms/measurement/internal/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->a:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->a()V

    goto :goto_0
.end method
