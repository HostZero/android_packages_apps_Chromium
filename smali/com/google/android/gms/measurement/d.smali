.class final Lcom/google/android/gms/measurement/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/measurement/internal/y;

.field final synthetic c:Lcom/google/android/gms/measurement/c;

.field private synthetic d:Lcom/google/android/gms/measurement/internal/S;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/c;Lcom/google/android/gms/measurement/internal/S;ILcom/google/android/gms/measurement/internal/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/d;->c:Lcom/google/android/gms/measurement/c;

    iput-object p2, p0, Lcom/google/android/gms/measurement/d;->d:Lcom/google/android/gms/measurement/internal/S;

    iput p3, p0, Lcom/google/android/gms/measurement/d;->a:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/d;->b:Lcom/google/android/gms/measurement/internal/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/d;->d:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->w()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/d;->c:Lcom/google/android/gms/measurement/c;

    invoke-static {v0}, Lcom/google/android/gms/measurement/c;->a(Lcom/google/android/gms/measurement/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/e;-><init>(Lcom/google/android/gms/measurement/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
