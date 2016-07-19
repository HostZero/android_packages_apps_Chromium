.class public Lcom/google/ipc/invalidation/ticl/android2/TiclService;
.super Landroid/app/IntentService;
.source "TiclService.java"


# instance fields
.field private a:Lcom/google/ipc/invalidation/ticl/android2/j;

.field private final b:Lcom/google/ipc/invalidation/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "TiclService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/google/ipc/invalidation/a/a;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->b:Lcom/google/ipc/invalidation/a/a;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->setIntentRedelivery(Z)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/ticl/android2/j;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    return-object v0
.end method

.method private a([B)V
    .locals 5

    .prologue
    .line 318
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->a([B)Lcom/google/ipc/invalidation/ticl/a/ao;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ao;->e()Lcom/google/ipc/invalidation/ticl/a/X;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ao;->e()Lcom/google/ipc/invalidation/ticl/a/X;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/android2/i;->a(Lcom/google/ipc/invalidation/ticl/a/X;)Landroid/content/Intent;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v2, "Failed to parse message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)Lcom/google/ipc/invalidation/a/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->b:Lcom/google/ipc/invalidation/a/a;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 1081
    :cond_0
    new-instance v2, Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/ticl/android2/a;-><init>()V

    const-string/jumbo v3, "TiclService"

    .line 1131
    new-instance v4, Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/google/ipc/invalidation/ticl/android2/j;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/ticl/android2/a;Ljava/lang/String;B)V

    .line 97
    iput-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    .line 98
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/android2/j;->start()V

    .line 99
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "onHandleIntent(%s)"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :try_start_0
    const-string/jumbo v2, "ipcinv-downcall"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 104
    const-string/jumbo v0, "ipcinv-downcall"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2127
    :try_start_1
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->a([B)Lcom/google/ipc/invalidation/ticl/a/m;
    :try_end_1
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2134
    :try_start_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v2, "Handle client downcall: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2398
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-static {p0, v1}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;

    move-result-object v1

    .line 2399
    if-nez v1, :cond_1

    .line 2400
    const-string/jumbo v2, "Client does not exist on downcall"

    .line 2407
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->newInstance(IZLjava/lang/String;Lcom/google/ipc/invalidation/external/client/types/ErrorContext;)Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

    move-result-object v2

    .line 2408
    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 2409
    invoke-static {p0, v2}, Lcom/google/ipc/invalidation/ticl/android2/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2139
    :cond_1
    if-nez v1, :cond_3

    .line 2140
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v2, "Dropping client downcall since no Ticl: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->stop()V

    .line 118
    iput-object v7, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    goto :goto_0

    .line 2128
    :catch_0
    move-exception v1

    .line 2129
    :try_start_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Failed parsing ClientDowncall from %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/p;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->stop()V

    .line 118
    iput-object v7, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    throw v0

    .line 2145
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->d()Lcom/google/ipc/invalidation/ticl/a/n;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2146
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->d()Lcom/google/ipc/invalidation/ticl/a/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/n;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->newInstance([B)Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/b;->acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    .line 2170
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2171
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 2148
    :cond_5
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2149
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/b;->start()V

    goto :goto_2

    .line 2150
    :cond_6
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2151
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/b;->stop()V

    goto :goto_2

    .line 2152
    :cond_7
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->e()Lcom/google/ipc/invalidation/ticl/a/o;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2153
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->e()Lcom/google/ipc/invalidation/ticl/a/o;

    move-result-object v2

    .line 2154
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2155
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroid/support/customtabs/a;->convertFromObjectIdProtoCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 2157
    invoke-virtual {v1, v3}, Lcom/google/ipc/invalidation/ticl/android2/b;->register(Ljava/util/Collection;)V

    .line 2159
    :cond_8
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/o;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2160
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/o;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/a;->convertFromObjectIdProtoCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 2162
    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/android2/b;->unregister(Ljava/util/Collection;)V

    goto :goto_2

    .line 2165
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid downcall passed validation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2173
    :cond_a
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    goto/16 :goto_1

    .line 105
    :cond_b
    const-string/jumbo v2, "ipcinv-internal-downcall"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 106
    const-string/jumbo v2, "ipcinv-internal-downcall"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 3182
    :try_start_5
    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->a([B)Lcom/google/ipc/invalidation/ticl/a/r;
    :try_end_5
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 3189
    :try_start_6
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    const-string/jumbo v4, "Handle internal downcall: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3192
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->a()Lcom/google/ipc/invalidation/ticl/a/u;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3196
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-static {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;

    move-result-object v3

    .line 3197
    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->a()Lcom/google/ipc/invalidation/ticl/a/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/u;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    .line 3256
    if-eqz v0, :cond_d

    .line 3258
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->a()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;->onMessageReceived([B)V

    .line 3199
    :goto_4
    if-eqz v3, :cond_2

    .line 3200
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    goto/16 :goto_1

    .line 3183
    :catch_1
    move-exception v0

    .line 3184
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v3, "Failed parsing InternalDowncall from %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-interface {v1, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 3197
    goto :goto_3

    .line 3264
    :cond_d
    invoke-direct {p0, v1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a([B)V

    .line 3272
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Message for unstarted Ticl; rewrite state"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3273
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    move-result-object v0

    const-string/jumbo v1, "ClientToken"

    new-instance v2, Lcom/google/ipc/invalidation/ticl/android2/l;

    invoke-direct {v2, p0}, Lcom/google/ipc/invalidation/ticl/android2/l;-><init>(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->readKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    goto :goto_4

    .line 3206
    :cond_e
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->c()Lcom/google/ipc/invalidation/ticl/a/t;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3209
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;

    move-result-object v0

    .line 3210
    if-eqz v0, :cond_2

    .line 3211
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->a()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->c()Lcom/google/ipc/invalidation/ticl/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/t;->a()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;->onOnlineStatusChange(Z)V

    .line 3213
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    goto/16 :goto_1

    .line 3219
    :cond_f
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3220
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;

    move-result-object v0

    .line 3221
    if-eqz v0, :cond_2

    .line 3222
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->a()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;->onAddressChange()V

    .line 3223
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    goto/16 :goto_1

    .line 3229
    :cond_10
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->e()Lcom/google/ipc/invalidation/ticl/a/s;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3230
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->e()Lcom/google/ipc/invalidation/ticl/a/s;

    move-result-object v0

    .line 4240
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;)V

    .line 4243
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v2, "Create client: creating"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4244
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/s;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/s;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/s;->d()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/s;->e()Z

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;I[BLcom/google/ipc/invalidation/ticl/a/N;Z)V

    goto/16 :goto_1

    .line 3233
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid internal downcall passed validation: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_12
    const-string/jumbo v0, "ipcinv-scheduler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 108
    const-string/jumbo v0, "ipcinv-scheduler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 4341
    :try_start_7
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/i;->a([B)Lcom/google/ipc/invalidation/ticl/a/i;
    :try_end_7
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 4348
    :try_start_8
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v2, "Handle scheduler event: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4351
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;

    move-result-object v2

    .line 4354
    if-nez v2, :cond_13

    .line 4355
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v2, "Dropping event %s; Ticl state does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/i;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4342
    :catch_2
    move-exception v1

    .line 4343
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Failed parsing SchedulerEvent from %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/p;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4361
    :cond_13
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    .line 4363
    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->a(Lcom/google/ipc/invalidation/ticl/a/i;)V

    .line 4366
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    goto/16 :goto_1

    .line 109
    :cond_14
    const-string/jumbo v0, "ipcinv-implicit-scheduler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4371
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Handle implicit scheduler event"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4374
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;

    move-result-object v1

    .line 4377
    if-nez v1, :cond_15

    .line 4378
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Dropping implicit scheduling event; Ticl state does not exist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4383
    :cond_15
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    .line 4385
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->a()V

    .line 4388
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    goto/16 :goto_1

    .line 112
    :cond_16
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a:Lcom/google/ipc/invalidation/ticl/android2/j;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/j;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Received Intent without any recognized extras: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method
