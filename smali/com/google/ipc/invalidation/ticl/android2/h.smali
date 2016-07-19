.class final Lcom/google/ipc/invalidation/ticl/android2/h;
.super Ljava/lang/Object;
.source "AndroidTiclManifest.java"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/h;->a:Ljava/util/Map;

    const-string/jumbo v1, "ipc.invalidation.ticl.service_class"

    const-string/jumbo v2, "com.google.ipc.invalidation.ticl.android2.TiclService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/h;->a:Ljava/util/Map;

    const-string/jumbo v1, "ipc.invalidation.ticl.listener_class"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/h;->a:Ljava/util/Map;

    const-string/jumbo v1, "ipc.invalidation.ticl.listener_service_class"

    const-string/jumbo v2, "com.google.ipc.invalidation.ticl.android2.AndroidInvalidationListenerStub"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/h;->a:Ljava/util/Map;

    const-string/jumbo v1, "ipc.invalidation.ticl.background_invalidation_listener_service_class"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/h;->a:Ljava/util/Map;

    const-string/jumbo v1, "ipc.invalidation.ticl.gcm_upstream_service_class"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    const-string/jumbo v1, "ipc.invalidation.ticl.service_class"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/h;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->b:Ljava/lang/String;

    .line 158
    const-string/jumbo v1, "ipc.invalidation.ticl.listener_class"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/h;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "ipc.invalidation.ticl.listener_service_class"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/h;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->c:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "ipc.invalidation.ticl.background_invalidation_listener_service_class"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/h;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->d:Ljava/lang/String;

    .line 162
    const-string/jumbo v1, "ipc.invalidation.ticl.gcm_upstream_service_class"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/h;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->e:Ljava/lang/String;

    .line 163
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot read own application info"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ipc/invalidation/ticl/android2/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/h;->e:Ljava/lang/String;

    return-object v0
.end method
