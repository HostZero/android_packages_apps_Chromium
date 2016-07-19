.class final Lcom/google/android/gms/measurement/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ax;->a:Lcom/google/android/gms/measurement/internal/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ax;->a:Lcom/google/android/gms/measurement/internal/ao;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ax;->a:Lcom/google/android/gms/measurement/internal/ao;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/an;->j()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/measurement/c;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/an;Landroid/content/ComponentName;)V

    return-void
.end method
