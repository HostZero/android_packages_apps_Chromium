.class public final Lcom/google/android/gms/common/api/a/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a/N;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/a/O;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/E;->a:Lcom/google/android/gms/common/api/a/O;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/E;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->a_()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/E;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/a/F;->a:Ljava/util/Set;

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/E;->a:Lcom/google/android/gms/common/api/a/O;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a/O;->e()V

    return-void
.end method
