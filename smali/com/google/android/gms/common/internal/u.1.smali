.class final Lcom/google/android/gms/common/internal/u;
.super Lcom/google/android/gms/common/internal/t;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/t;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/t;)Lcom/google/android/gms/common/internal/t;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/internal/u;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/u;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final a(C)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/t;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
