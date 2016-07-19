.class public Lcom/google/android/gms/measurement/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/S;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/S;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/a;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/S;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->l()Lcom/google/android/gms/measurement/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->k()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
