.class public final Lcom/google/ipc/invalidation/ticl/android2/g;
.super Ljava/lang/Object;
.source "AndroidTiclManifest.java"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Lcom/google/ipc/invalidation/ticl/android2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/g;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/g;->b:Lcom/google/ipc/invalidation/ticl/android2/h;

    .line 49
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/h;
    .locals 4

    .prologue
    .line 83
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/g;->a:Ljava/util/Map;

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 85
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/g;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/h;

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/h;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/android2/h;-><init>(Landroid/content/Context;)V

    .line 88
    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/g;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/g;->b:Lcom/google/ipc/invalidation/ticl/android2/h;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/h;->a(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/g;->b:Lcom/google/ipc/invalidation/ticl/android2/h;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/h;->b(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/g;->b:Lcom/google/ipc/invalidation/ticl/android2/h;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/h;->c(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/g;->b:Lcom/google/ipc/invalidation/ticl/android2/h;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/h;->d(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
