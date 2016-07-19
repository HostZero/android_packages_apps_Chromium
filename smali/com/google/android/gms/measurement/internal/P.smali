.class final Lcom/google/android/gms/measurement/internal/P;
.super Ljava/util/concurrent/FutureTask;


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/gms/measurement/internal/O;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/P;->b:Lcom/google/android/gms/measurement/internal/O;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/P;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/O;Ljava/util/concurrent/Callable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/P;->b:Lcom/google/android/gms/measurement/internal/O;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p3}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/P;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/P;->b:Lcom/google/android/gms/measurement/internal/O;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/P;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
