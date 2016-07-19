.class public abstract Lcom/google/android/gms/cast/internal/b;
.super Lcom/google/android/gms/common/api/a/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/g;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/a/k;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/o;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/o;)V

    return-void
.end method
