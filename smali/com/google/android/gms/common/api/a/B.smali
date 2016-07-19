.class final Lcom/google/android/gms/common/api/a/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/a/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/B;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/B;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/B;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/api/a/u;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/j;->zzal(Landroid/content/Context;)V

    return-void
.end method
