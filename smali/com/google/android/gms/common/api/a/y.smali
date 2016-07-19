.class final Lcom/google/android/gms/common/api/a/y;
.super Lcom/google/android/gms/signin/internal/b;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/b;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/y;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/u;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->d(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/a/D;

    invoke-direct {v2, v0, v0, p1}, Lcom/google/android/gms/common/api/a/D;-><init>(Lcom/google/android/gms/common/api/a/N;Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/api/a/P;)V

    goto :goto_0
.end method
