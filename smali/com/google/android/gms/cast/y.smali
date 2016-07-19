.class final Lcom/google/android/gms/cast/y;
.super Lcom/google/android/gms/cast/E;


# instance fields
.field private synthetic b:Lcom/google/android/gms/common/api/g;

.field private synthetic c:Lorg/json/JSONObject;

.field private synthetic d:Lcom/google/android/gms/cast/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/w;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/g;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    iput-object p3, p0, Lcom/google/android/gms/cast/y;->b:Lcom/google/android/gms/common/api/g;

    iput-object p4, p0, Lcom/google/android/gms/cast/y;->c:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/E;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 4

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    invoke-static {v0}, Lcom/google/android/gms/cast/w;->b(Lcom/google/android/gms/cast/w;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    invoke-static {v0}, Lcom/google/android/gms/cast/w;->c(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/C;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/y;->b:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/C;->a(Lcom/google/android/gms/common/api/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    invoke-static {v0}, Lcom/google/android/gms/cast/w;->d(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/internal/w;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/y;->a:Lcom/google/android/gms/cast/internal/y;

    iget-object v3, p0, Lcom/google/android/gms/cast/y;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/internal/w;->a(Lcom/google/android/gms/cast/internal/y;Lorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    invoke-static {v0}, Lcom/google/android/gms/cast/w;->c(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/C;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/C;->a(Lcom/google/android/gms/common/api/g;)V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x834

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/y;->b(Lcom/google/android/gms/common/api/Status;)Landroid/support/v4/content/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/y;->a(Lcom/google/android/gms/common/api/o;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    invoke-static {v0}, Lcom/google/android/gms/cast/w;->c(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/C;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/C;->a(Lcom/google/android/gms/common/api/g;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/cast/y;->d:Lcom/google/android/gms/cast/w;

    invoke-static {v2}, Lcom/google/android/gms/cast/w;->c(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/C;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/C;->a(Lcom/google/android/gms/common/api/g;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
