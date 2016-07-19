.class public final Lcom/google/ipc/invalidation/ticl/a/o;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 212
    const-string/jumbo v0, "registrations"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/o;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    .line 213
    const-string/jumbo v0, "unregistrations"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/o;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    .line 214
    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const-string/jumbo v0, "registrations"

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    if-eqz v0, :cond_1

    .line 220
    const-string/jumbo v1, "unregistrations"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_1
    const-string/jumbo v0, "unregistrations"

    .line 224
    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/o;->u()V

    .line 225
    :cond_3
    return-void
.end method

.method static a(Lcom/google/a/a/a/o;)Lcom/google/ipc/invalidation/ticl/a/o;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 264
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/o;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 266
    :goto_1
    iget-object v3, p0, Lcom/google/a/a/a/o;->a:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/google/a/a/a/o;->a:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/o;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    :goto_2
    iget-object v0, p0, Lcom/google/a/a/a/o;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/google/a/a/a/o;->b:[Lcom/google/a/a/a/a/s;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 273
    :cond_2
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/o;

    invoke-direct {v0, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/o;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/o;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/a/o;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static b(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/o;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/ipc/invalidation/ticl/a/o;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 247
    const-string/jumbo v0, "<RegistrationDowncall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 248
    const-string/jumbo v0, " registrations=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 249
    const-string/jumbo v0, " unregistrations=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 250
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 251
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    return-object v0
.end method

.method final d()Lcom/google/a/a/a/o;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v3, Lcom/google/a/a/a/o;

    invoke-direct {v3}, Lcom/google/a/a/a/o;-><init>()V

    .line 283
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v3, Lcom/google/a/a/a/o;->a:[Lcom/google/a/a/a/a/s;

    move v1, v2

    .line 284
    :goto_0
    iget-object v0, v3, Lcom/google/a/a/a/o;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 285
    iget-object v4, v3, Lcom/google/a/a/a/o;->a:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v4, v1

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v3, Lcom/google/a/a/a/o;->b:[Lcom/google/a/a/a/a/s;

    .line 288
    :goto_1
    iget-object v0, v3, Lcom/google/a/a/a/o;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 289
    iget-object v1, v3, Lcom/google/a/a/a/o;->b:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v1, v2

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_1
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    if-ne p0, p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/o;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 234
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/o;

    .line 235
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/o;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/o;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
