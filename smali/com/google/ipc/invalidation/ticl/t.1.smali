.class final Lcom/google/ipc/invalidation/ticl/t;
.super Lcom/google/ipc/invalidation/ticl/w;
.source "InvalidationClientCore.java"


# instance fields
.field final synthetic a:Lcom/google/ipc/invalidation/ticl/m;

.field private final b:Lcom/google/ipc/invalidation/b/b;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;)V
    .locals 6

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 203
    const-string/jumbo v2, "PersistentWrite"

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->c()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;IIZ)V

    .line 199
    sget-object v0, Lcom/google/ipc/invalidation/ticl/a/J;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/b;->a(Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->b:Lcom/google/ipc/invalidation/b/b;

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 6

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    .line 207
    const-string/jumbo v2, "PersistentWrite"

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->c()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;ILcom/google/ipc/invalidation/ticl/a/aw;B)V

    .line 199
    sget-object v0, Lcom/google/ipc/invalidation/ticl/a/J;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-static {v0}, Lcom/google/ipc/invalidation/b/b;->a(Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->b:Lcom/google/ipc/invalidation/b/b;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/t;)Lcom/google/ipc/invalidation/b/b;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->b:Lcom/google/ipc/invalidation/b/b;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->e(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 256
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->e(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/m;->l(Lcom/google/ipc/invalidation/ticl/m;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/ticl/a/J;->a(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Long;)Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v2

    .line 221
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->m(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/a/a;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/customtabs/a;->serializeState(Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/a/a;)[B

    move-result-object v3

    .line 226
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->b:Lcom/google/ipc/invalidation/b/b;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/ipc/invalidation/ticl/a/J;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 230
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/J;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->b:Lcom/google/ipc/invalidation/b/b;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/J;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 237
    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/t;->a:Lcom/google/ipc/invalidation/ticl/m;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/m;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    const-string/jumbo v1, "ClientToken"

    new-instance v4, Lcom/google/ipc/invalidation/ticl/u;

    invoke-direct {v4, p0, v2}, Lcom/google/ipc/invalidation/ticl/u;-><init>(Lcom/google/ipc/invalidation/ticl/t;Lcom/google/ipc/invalidation/ticl/a/J;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->writeKey(Ljava/lang/String;[BLcom/google/ipc/invalidation/external/client/types/Callback;)V

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method
