.class public final Lcom/google/android/gms/common/internal/R;
.super Lcom/google/android/gms/common/internal/K;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/internal/J;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/J;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/R;->a:Lcom/google/android/gms/common/internal/J;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/K;-><init>(Lcom/google/android/gms/common/internal/J;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/R;->a:Lcom/google/android/gms/common/internal/J;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/J;->b(Lcom/google/android/gms/common/internal/J;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/R;->a:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/R;->a:Lcom/google/android/gms/common/internal/J;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/J;->b(Lcom/google/android/gms/common/internal/J;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
