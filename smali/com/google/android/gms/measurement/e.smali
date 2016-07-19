.class final Lcom/google/android/gms/measurement/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/d;

    iget-object v0, v0, Lcom/google/android/gms/measurement/d;->c:Lcom/google/android/gms/measurement/c;

    iget-object v1, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/d;

    iget v1, v1, Lcom/google/android/gms/measurement/d;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/c;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/d;

    iget-object v0, v0, Lcom/google/android/gms/measurement/d;->b:Lcom/google/android/gms/measurement/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Device AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/e;->a:Lcom/google/android/gms/measurement/d;

    iget-object v0, v0, Lcom/google/android/gms/measurement/d;->b:Lcom/google/android/gms/measurement/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
