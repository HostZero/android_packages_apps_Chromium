.class public Lcom/google/ipc/invalidation/ticl/android2/a;
.super Ljava/lang/Object;
.source "AndroidClock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Z)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2152
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/ipc/invalidation/ticl/a/s;->a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Z)Lcom/google/ipc/invalidation/ticl/a/s;

    move-result-object v0

    .line 2154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2155
    const-string/jumbo v2, "ipcinv-internal-downcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/s;)Lcom/google/ipc/invalidation/ticl/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/r;->f()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2157
    return-object v1
.end method

.method public static a(Lcom/google/ipc/invalidation/b/c;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2130
    const-string/jumbo v1, "ipcinv-internal-downcall"

    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/a/u;->a(Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/u;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/u;)Lcom/google/ipc/invalidation/ticl/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->f()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2133
    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2230
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->getErrorReason()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->isTransient()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/w;->a(ILjava/lang/String;Z)Lcom/google/ipc/invalidation/ticl/a/w;

    move-result-object v1

    .line 2232
    const-string/jumbo v2, "ipcinv-upcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/w;)Lcom/google/ipc/invalidation/ticl/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/v;->h()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2234
    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2104
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/a/o;->a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/o;

    move-result-object v0

    .line 2106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2107
    const-string/jumbo v2, "ipcinv-downcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/o;)Lcom/google/ipc/invalidation/ticl/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->f()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2109
    return-object v1
.end method

.method public static b()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2145
    const-string/jumbo v1, "ipcinv-internal-downcall"

    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/r;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Z)Lcom/google/ipc/invalidation/ticl/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/r;->f()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2147
    return-object v0
.end method

.method public static b(Ljava/util/Collection;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2113
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/a/o;->b(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/o;

    move-result-object v0

    .line 2115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2116
    const-string/jumbo v2, "ipcinv-downcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/o;)Lcom/google/ipc/invalidation/ticl/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->f()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2118
    return-object v1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
