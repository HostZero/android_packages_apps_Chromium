.class final Lcom/google/android/gms/measurement/internal/ai;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ai;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Lcom/google/android/gms/measurement/internal/S;)Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/aj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/aj;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    return-object v0
.end method

.method static b(Lcom/google/android/gms/measurement/internal/S;)Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/an;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/an;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    return-object v0
.end method

.method static c(Lcom/google/android/gms/measurement/internal/S;)Lcom/google/android/gms/measurement/internal/aH;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/aH;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/aH;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    return-object v0
.end method
