.class final Lcom/google/android/gms/common/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/g;

.field private synthetic b:Lcom/google/android/gms/common/api/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/common/api/h;

    iput-object p2, p0, Lcom/google/android/gms/common/api/n;->a:Lcom/google/android/gms/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v2}, Landroid/support/v4/app/w;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v2}, Landroid/support/v4/app/w;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/common/api/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->b:Lcom/google/android/gms/common/api/h;

    invoke-static {v2}, Lcom/google/android/gms/common/api/a/d;->b(Landroid/support/v4/app/w;)Lcom/google/android/gms/common/api/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/n;->a:Lcom/google/android/gms/common/api/g;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/a/d;Lcom/google/android/gms/common/api/g;)V

    goto :goto_0
.end method
