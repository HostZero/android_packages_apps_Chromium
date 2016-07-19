.class final Lcom/google/android/gms/measurement/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/t;

.field private synthetic b:Lcom/google/android/gms/measurement/internal/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ao;Lcom/google/android/gms/measurement/internal/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/aw;->b:Lcom/google/android/gms/measurement/internal/ao;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/aw;->a:Lcom/google/android/gms/measurement/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aw;->b:Lcom/google/android/gms/measurement/internal/ao;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aw;->b:Lcom/google/android/gms/measurement/internal/ao;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ao;->a(Lcom/google/android/gms/measurement/internal/ao;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aw;->b:Lcom/google/android/gms/measurement/internal/ao;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aw;->b:Lcom/google/android/gms/measurement/internal/ao;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aw;->b:Lcom/google/android/gms/measurement/internal/ao;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/aw;->a:Lcom/google/android/gms/measurement/internal/t;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/an;Lcom/google/android/gms/measurement/internal/t;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
