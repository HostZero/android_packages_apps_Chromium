.class public final Lcom/google/android/gms/cast/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/k;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/cast/internal/w;

.field private final c:Lcom/google/android/gms/cast/C;

.field private d:Lcom/google/android/gms/cast/B;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/w;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/cast/C;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/C;-><init>(Lcom/google/android/gms/cast/w;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/w;->c:Lcom/google/android/gms/cast/C;

    new-instance v0, Lcom/google/android/gms/cast/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/x;-><init>(Lcom/google/android/gms/cast/w;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/cast/internal/w;

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/cast/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/cast/w;->c:Lcom/google/android/gms/cast/C;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/w;->a(Lcom/google/android/gms/cast/internal/x;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/w;)V
    .locals 1

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/cast/w;->d:Lcom/google/android/gms/cast/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->d:Lcom/google/android/gms/cast/B;

    invoke-interface {v0}, Lcom/google/android/gms/cast/B;->onStatusUpdated()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/cast/w;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/C;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->c:Lcom/google/android/gms/cast/C;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/internal/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/cast/internal/w;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/t;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/w;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/cast/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/w;->d()Lcom/google/android/gms/cast/t;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/l;
    .locals 2

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/cast/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p1, v1}, Lcom/google/android/gms/cast/y;-><init>(Lcom/google/android/gms/cast/w;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/g;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/cast/B;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/w;->d:Lcom/google/android/gms/cast/B;

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/l;
    .locals 2

    .prologue
    .line 0
    .line 2000
    new-instance v0, Lcom/google/android/gms/cast/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p1, v1}, Lcom/google/android/gms/cast/z;-><init>(Lcom/google/android/gms/cast/w;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/g;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/l;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/A;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/cast/A;-><init>(Lcom/google/android/gms/cast/w;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/g;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/cast/internal/w;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/internal/w;->a(Ljava/lang/String;)V

    return-void
.end method
