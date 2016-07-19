.class final Lcom/google/ipc/invalidation/ticl/android2/d;
.super Ljava/lang/Object;
.source "AndroidInvalidationClientStub.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/InvalidationClient;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/d;->a:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-direct {v0, p1}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/d;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method


# virtual methods
.method public final acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v0

    .line 1096
    new-instance v1, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/n;->a(Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/n;

    move-result-object v0

    .line 1097
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1098
    const-string/jumbo v2, "ipcinv-downcall"

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/n;)Lcom/google/ipc/invalidation/ticl/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/m;->f()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 95
    invoke-direct {p0, v1}, Lcom/google/ipc/invalidation/ticl/android2/d;->a(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public final register(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/d;->a(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public final register(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Landroid/support/customtabs/a;->convertToObjectIdProtoCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->a(Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/d;->a(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Android clients are automatically started when created"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final stop()V
    .locals 4

    .prologue
    .line 62
    .line 1089
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1090
    const-string/jumbo v1, "ipcinv-downcall"

    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/q;->a:Lcom/google/ipc/invalidation/ticl/a/q;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/q;)Lcom/google/ipc/invalidation/ticl/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/m;->f()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 62
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/d;->a(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public final unregister(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->b(Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/d;->a(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public final unregister(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Landroid/support/customtabs/a;->convertToObjectIdProtoCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->b(Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/d;->a(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
