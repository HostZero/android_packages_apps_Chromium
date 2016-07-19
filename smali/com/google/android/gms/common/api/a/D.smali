.class final Lcom/google/android/gms/common/api/a/D;
.super Lcom/google/android/gms/common/api/a/P;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/a/u;

.field private synthetic b:Lcom/google/android/gms/signin/internal/SignInResponse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/N;Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/D;->a:Lcom/google/android/gms/common/api/a/u;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a/D;->b:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a/P;-><init>(Lcom/google/android/gms/common/api/a/N;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/D;->a:Lcom/google/android/gms/common/api/a/u;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/D;->b:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
