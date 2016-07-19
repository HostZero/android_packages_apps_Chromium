.class final Lcom/google/android/gms/b/C;
.super Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/e;
    .locals 6

    check-cast p4, Lcom/google/android/gms/b/G;

    if-nez p4, :cond_0

    sget-object v0, Lcom/google/android/gms/b/G;->a:Lcom/google/android/gms/b/G;

    :cond_0
    new-instance v0, Lcom/google/android/gms/signin/internal/k;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/signin/internal/k;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)V

    return-object v0
.end method
