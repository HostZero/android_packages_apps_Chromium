.class public Lcom/google/android/gms/cast/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/g;)D
    .locals 2

    .prologue
    .line 5000
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/f;->f()D

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;)Lcom/google/android/gms/common/api/l;
    .locals 1

    .prologue
    .line 3000
    new-instance v0, Lcom/google/android/gms/cast/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/g;-><init>(Lcom/google/android/gms/cast/d;Lcom/google/android/gms/common/api/g;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/l;
    .locals 1

    .prologue
    .line 14000
    new-instance v0, Lcom/google/android/gms/cast/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/f;-><init>(Lcom/google/android/gms/cast/d;Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/l;
    .locals 1

    .prologue
    .line 1000
    new-instance v0, Lcom/google/android/gms/cast/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/e;-><init>(Lcom/google/android/gms/cast/d;Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/l;
    .locals 1

    .prologue
    .line 2000
    new-instance v0, Lcom/google/android/gms/cast/n;

    invoke-direct {v0}, Lcom/google/android/gms/cast/n;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/n;->a(Z)Lcom/google/android/gms/cast/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/n;->a()Lcom/google/android/gms/cast/LaunchOptions;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;D)V
    .locals 2

    .prologue
    .line 4000
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/internal/f;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/k;)V
    .locals 2

    .prologue
    .line 11000
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/String;Lcom/google/android/gms/cast/k;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/g;Z)V
    .locals 2

    .prologue
    .line 6000
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/internal/f;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/g;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12000
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/g;)Z
    .locals 1

    .prologue
    .line 7000
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/f;->g()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/api/g;)I
    .locals 1

    .prologue
    .line 8000
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/f;->h()I

    move-result v0

    return v0
.end method

.method public d(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    .prologue
    .line 9000
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/f;->i()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/android/gms/common/api/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10000
    sget-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/f;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
