.class final Lcom/google/android/gms/measurement/internal/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/F;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/F;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/G;->a:Lcom/google/android/gms/measurement/internal/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/G;->a:Lcom/google/android/gms/measurement/internal/F;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/F;->a(Lcom/google/android/gms/measurement/internal/F;)Lcom/google/android/gms/measurement/internal/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->x()V

    return-void
.end method
