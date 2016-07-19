.class public final Lcom/google/ipc/invalidation/external/client/android2/AndroidClientFactory;
.super Ljava/lang/Object;
.source "AndroidClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static createClient(Landroid/content/Context;I[B)V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/m;->a()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    .line 44
    invoke-static {p2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/N;Z)Landroid/content/Intent;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v1, p0}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/android2/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method
