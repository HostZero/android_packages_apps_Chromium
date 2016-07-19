.class final Lcom/google/ipc/invalidation/ticl/I;
.super Ljava/lang/Object;
.source "ProtocolHandler.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/aa;

.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/Set;

.field private f:Lcom/google/ipc/invalidation/ticl/a/W;

.field private g:Lcom/google/ipc/invalidation/ticl/a/U;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    .line 111
    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 114
    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    .line 118
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/I;->b:Lcom/google/ipc/invalidation/external/client/SystemResources;

    .line 119
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;Lcom/google/ipc/invalidation/ticl/a/as;)V
    .locals 4

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/ticl/I;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;)V

    .line 125
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 126
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 129
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    .line 132
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_2
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aj;

    .line 135
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    :cond_3
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->f()Lcom/google/ipc/invalidation/ticl/a/W;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 138
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/as;->g()Lcom/google/ipc/invalidation/ticl/a/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    .line 141
    :cond_4
    return-void
.end method

.method private b()Lcom/google/ipc/invalidation/ticl/a/af;
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Lcom/google/ipc/invalidation/ticl/a/aa;I)Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 259
    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/af;->a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/ipc/invalidation/ticl/a/P;Z)Lcom/google/ipc/invalidation/ticl/a/Q;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 180
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/af;->b:Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/af;)V

    .line 182
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 183
    iput-object v5, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 192
    :goto_0
    if-nez p2, :cond_1

    if-nez v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->b:Lcom/google/ipc/invalidation/external/client/SystemResources;

    invoke-interface {v1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    const-string/jumbo v2, "Cannot send message since no token and no initialize msg"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->k:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 239
    :goto_1
    return-object v5

    :cond_0
    move-object v1, v5

    .line 185
    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1269
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v3

    :cond_2
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/X;->a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/X;

    move-result-object v4

    .line 1272
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 205
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/af;->c:Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/af;)V

    .line 211
    :goto_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/I;->b()Lcom/google/ipc/invalidation/ticl/a/af;

    move-result-object v2

    .line 213
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v6, Lcom/google/ipc/invalidation/ticl/af;->d:Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v0, v6}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/af;)V

    .line 219
    :goto_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/al;->a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/al;

    move-result-object v3

    .line 224
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 225
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v6, Lcom/google/ipc/invalidation/ticl/af;->e:Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v0, v6}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/af;)V

    .line 231
    :goto_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->a:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v6, Lcom/google/ipc/invalidation/ticl/af;->a:Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v0, v6}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/af;)V

    .line 233
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    .line 234
    iput-object v5, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    move-object v5, v0

    :cond_3
    move-object v0, p1

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/Q;->a(Lcom/google/ipc/invalidation/ticl/a/P;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/af;Lcom/google/ipc/invalidation/ticl/a/al;Lcom/google/ipc/invalidation/ticl/a/X;Lcom/google/ipc/invalidation/ticl/a/U;)Lcom/google/ipc/invalidation/ticl/a/Q;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 207
    goto :goto_2

    :cond_5
    move-object v2, v5

    .line 215
    goto :goto_3

    :cond_6
    move-object v3, v5

    .line 227
    goto :goto_4
.end method

.method public final a()Lcom/google/ipc/invalidation/ticl/a/as;
    .locals 7

    .prologue
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 284
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-static/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/U;)Lcom/google/ipc/invalidation/ticl/a/as;

    move-result-object v0

    return-object v0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/U;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/I;->g:Lcom/google/ipc/invalidation/ticl/a/U;

    .line 151
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/W;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/I;->f:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 146
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/Y;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/aj;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/I;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method
