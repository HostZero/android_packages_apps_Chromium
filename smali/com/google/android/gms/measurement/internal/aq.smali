.class final Lcom/google/android/gms/measurement/internal/aq;
.super Lcom/google/android/gms/measurement/internal/k;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/an;Lcom/google/android/gms/measurement/internal/S;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/aq;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aq;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    return-void
.end method
