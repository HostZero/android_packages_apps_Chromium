.class abstract Lcom/google/android/gms/cast/E;
.super Lcom/google/android/gms/cast/internal/b;


# instance fields
.field a:Lcom/google/android/gms/cast/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/g;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/b;-><init>(Lcom/google/android/gms/common/api/g;)V

    new-instance v0, Lcom/google/android/gms/cast/F;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/F;-><init>(Lcom/google/android/gms/cast/E;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/E;->a:Lcom/google/android/gms/cast/internal/y;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/E;->b(Lcom/google/android/gms/common/api/Status;)Landroid/support/v4/content/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)Landroid/support/v4/content/i;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/G;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/G;-><init>(Lcom/google/android/gms/cast/E;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
