.class final Lcom/google/android/gms/common/api/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/api/g;

.field public final c:Lcom/google/android/gms/common/api/j;

.field private synthetic d:Lcom/google/android/gms/common/api/a/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/d;ILcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/e;->d:Lcom/google/android/gms/common/api/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/a/e;->a:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/a/e;->b:Lcom/google/android/gms/common/api/g;

    iput-object p4, p0, Lcom/google/android/gms/common/api/a/e;->c:Lcom/google/android/gms/common/api/j;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/j;)V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/e;->d:Lcom/google/android/gms/common/api/a/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/d;->d(Lcom/google/android/gms/common/api/a/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/a/f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/e;->d:Lcom/google/android/gms/common/api/a/d;

    iget v3, p0, Lcom/google/android/gms/common/api/a/e;->a:I

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/common/api/a/f;-><init>(Lcom/google/android/gms/common/api/a/d;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
