.class final Lcom/google/android/gms/measurement/internal/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/az;->a:Lcom/google/android/gms/measurement/internal/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/az;->a:Lcom/google/android/gms/measurement/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ay;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/aA;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/aA;-><init>(Lcom/google/android/gms/measurement/internal/az;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method
