.class final Lcom/google/android/gms/common/api/a/x;
.super Lcom/google/android/gms/common/api/a/A;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/google/android/gms/common/api/a/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/u;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/x;->b:Lcom/google/android/gms/common/api/a/u;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/a/A;-><init>(Lcom/google/android/gms/common/api/a/u;B)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/x;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/x;->b:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->d(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/x;->b:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/u;->g(Lcom/google/android/gms/common/api/a/u;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/a/F;->a:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/x;->b:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v2}, Lcom/google/android/gms/common/api/a/u;->h(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/internal/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/x;->b:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v3}, Lcom/google/android/gms/common/api/a/u;->d(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    iget-object v3, v3, Lcom/google/android/gms/common/api/a/F;->a:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/internal/a;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
