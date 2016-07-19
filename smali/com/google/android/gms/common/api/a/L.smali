.class final Lcom/google/android/gms/common/api/a/L;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a/J;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/a/F;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/L;->a:Lcom/google/android/gms/common/api/a/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a/K;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/L;->a:Lcom/google/android/gms/common/api/a/F;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a/K;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/api/a/F;->j()Lcom/google/android/gms/common/api/p;

    :cond_0
    return-void
.end method
