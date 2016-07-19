.class abstract Lcom/google/android/gms/cast/l;
.super Lcom/google/android/gms/cast/internal/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/b;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;
    .locals 1

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/cast/m;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/m;-><init>(Lcom/google/android/gms/cast/l;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method
