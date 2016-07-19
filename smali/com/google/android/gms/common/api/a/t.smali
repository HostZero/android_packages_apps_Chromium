.class final Lcom/google/android/gms/common/api/a/t;
.super Lcom/google/android/gms/common/api/a/P;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/a/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/r;Lcom/google/android/gms/common/api/a/N;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/t;->a:Lcom/google/android/gms/common/api/a/r;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/a/P;-><init>(Lcom/google/android/gms/common/api/a/N;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/t;->a:Lcom/google/android/gms/common/api/a/r;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/r;->a(Lcom/google/android/gms/common/api/a/r;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->e:Lcom/google/android/gms/common/api/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a/c;->a(Landroid/os/Bundle;)V

    return-void
.end method
