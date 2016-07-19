.class final Lcom/google/android/gms/measurement/internal/aA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/aA;->a:Lcom/google/android/gms/measurement/internal/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aA;->a:Lcom/google/android/gms/measurement/internal/az;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Lcom/google/android/gms/measurement/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ay;->u()V

    return-void
.end method
