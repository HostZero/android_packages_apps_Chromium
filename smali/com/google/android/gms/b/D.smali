.class final Lcom/google/android/gms/b/D;
.super Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/e;
    .locals 8

    check-cast p4, Landroid/support/v7/widget/aV;

    new-instance v0, Lcom/google/android/gms/signin/internal/k;

    const/4 v3, 0x0

    invoke-virtual {p4}, Landroid/support/v7/widget/aV;->a()Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/k;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/G;Landroid/os/Bundle;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)V

    return-object v0
.end method
