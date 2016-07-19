.class final Lcom/google/android/gms/common/api/a/C;
.super Lcom/google/android/gms/common/api/a/P;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic b:Lcom/google/android/gms/common/api/a/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/w;Lcom/google/android/gms/common/api/a/N;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/C;->b:Lcom/google/android/gms/common/api/a/w;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a/C;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/a/P;-><init>(Lcom/google/android/gms/common/api/a/N;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/C;->b:Lcom/google/android/gms/common/api/a/w;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/w;->a:Lcom/google/android/gms/common/api/a/u;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/C;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
