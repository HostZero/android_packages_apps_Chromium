.class public Landroid/support/v7/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# instance fields
.field a:Landroid/support/v7/media/b;

.field private final b:Landroid/support/v7/media/s;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private final l:Ljava/util/ArrayList;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/os/Bundle;

.field private u:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Landroid/support/v7/media/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    .line 788
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->s:I

    .line 917
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->b:Landroid/support/v7/media/s;

    .line 918
    iput-object p2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 919
    iput-object p3, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 920
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->h:Z

    return v0
.end method


# virtual methods
.method a(Landroid/support/v7/media/b;)I
    .locals 2

    .prologue
    .line 1397
    const/4 v0, 0x0

    .line 1398
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->a:Landroid/support/v7/media/b;

    if-eq v1, p1, :cond_0

    .line 1399
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(Landroid/support/v7/media/b;)I

    move-result v0

    .line 1401
    :cond_0
    return v0
.end method

.method public final a(Landroid/content/Intent;Landroid/support/v7/media/i;)V
    .locals 2

    .prologue
    .line 1191
    if-nez p1, :cond_0

    .line 1192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1196
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroid/support/v7/media/i;)V

    .line 1197
    return-void
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1157
    if-nez p1, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1162
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->b()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1163
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1164
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1165
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    const-string/jumbo v6, "MediaRouter"

    invoke-virtual {v0, v4, p1, v1, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    .line 1169
    :goto_1
    return v0

    .line 1164
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1169
    goto :goto_1
.end method

.method public final a(Landroid/support/v7/media/e;)Z
    .locals 2

    .prologue
    .line 1063
    if-nez p1, :cond_0

    .line 1064
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1067
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/e;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1092
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1094
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 1095
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1096
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    const/4 v0, 0x1

    .line 1100
    :goto_1
    return v0

    .line 1095
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1100
    goto :goto_1
.end method

.method final b(Landroid/support/v7/media/b;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1405
    const/4 v0, 0x0

    .line 1406
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->a:Landroid/support/v7/media/b;

    .line 1407
    if-eqz p1, :cond_11

    .line 1408
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1409
    invoke-virtual {p1}, Landroid/support/v7/media/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    move v0, v1

    .line 1412
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1413
    invoke-virtual {p1}, Landroid/support/v7/media/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->f:Ljava/lang/String;

    move v0, v1

    .line 1416
    :cond_1
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->g:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->e()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1417
    invoke-virtual {p1}, Landroid/support/v7/media/b;->e()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->g:Landroid/net/Uri;

    .line 1420
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->h:Z

    invoke-virtual {p1}, Landroid/support/v7/media/b;->f()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1421
    invoke-virtual {p1}, Landroid/support/v7/media/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->h:Z

    .line 1422
    or-int/lit8 v1, v1, 0x1

    .line 1424
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->i:Z

    invoke-virtual {p1}, Landroid/support/v7/media/b;->g()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 1425
    invoke-virtual {p1}, Landroid/support/v7/media/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->i:Z

    .line 1426
    or-int/lit8 v1, v1, 0x1

    .line 1428
    :cond_3
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->j:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->h()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1429
    invoke-virtual {p1}, Landroid/support/v7/media/b;->h()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->j:I

    .line 1430
    or-int/lit8 v1, v1, 0x1

    .line 1432
    :cond_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1433
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1434
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1435
    or-int/lit8 v1, v1, 0x1

    .line 1437
    :cond_5
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->m:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->l()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 1438
    invoke-virtual {p1}, Landroid/support/v7/media/b;->l()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->m:I

    .line 1439
    or-int/lit8 v1, v1, 0x1

    .line 1441
    :cond_6
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->n:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->m()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 1442
    invoke-virtual {p1}, Landroid/support/v7/media/b;->m()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->n:I

    .line 1443
    or-int/lit8 v1, v1, 0x1

    .line 1445
    :cond_7
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->o:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->n()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 1446
    invoke-virtual {p1}, Landroid/support/v7/media/b;->n()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->o:I

    .line 1447
    or-int/lit8 v1, v1, 0x1

    .line 1449
    :cond_8
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->p:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->q()I

    move-result v2

    if-eq v0, v2, :cond_9

    .line 1450
    invoke-virtual {p1}, Landroid/support/v7/media/b;->q()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->p:I

    .line 1451
    or-int/lit8 v1, v1, 0x3

    .line 1453
    :cond_9
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->q:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->o()I

    move-result v2

    if-eq v0, v2, :cond_a

    .line 1454
    invoke-virtual {p1}, Landroid/support/v7/media/b;->o()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->q:I

    .line 1455
    or-int/lit8 v1, v1, 0x3

    .line 1457
    :cond_a
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->r:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->p()I

    move-result v2

    if-eq v0, v2, :cond_b

    .line 1458
    invoke-virtual {p1}, Landroid/support/v7/media/b;->p()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->r:I

    .line 1459
    or-int/lit8 v1, v1, 0x3

    .line 1461
    :cond_b
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->s:I

    invoke-virtual {p1}, Landroid/support/v7/media/b;->r()I

    move-result v2

    if-eq v0, v2, :cond_c

    .line 1462
    invoke-virtual {p1}, Landroid/support/v7/media/b;->r()I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->s:I

    .line 1464
    or-int/lit8 v1, v1, 0x5

    .line 1466
    :cond_c
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->t:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->s()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouter;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1467
    invoke-virtual {p1}, Landroid/support/v7/media/b;->s()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->t:Landroid/os/Bundle;

    .line 1468
    or-int/lit8 v1, v1, 0x1

    .line 1470
    :cond_d
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->u:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroid/support/v7/media/b;->j()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouter;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1471
    invoke-virtual {p1}, Landroid/support/v7/media/b;->j()Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->u:Landroid/content/IntentSender;

    .line 1472
    or-int/lit8 v1, v1, 0x1

    .line 1474
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->k:Z

    invoke-virtual {p1}, Landroid/support/v7/media/b;->i()Z

    move-result v2

    if-eq v0, v2, :cond_f

    .line 1475
    invoke-virtual {p1}, Landroid/support/v7/media/b;->i()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->k:Z

    .line 1476
    or-int/lit8 v1, v1, 0x5

    .line 1479
    :cond_f
    :goto_1
    return v1

    :cond_10
    move v1, v0

    goto/16 :goto_0

    :cond_11
    move v1, v0

    goto :goto_1
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 1281
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1282
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->r:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1283
    return-void
.end method

.method public final c()Landroid/support/v7/media/s;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->b:Landroid/support/v7/media/s;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 1295
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1296
    if-eqz p1, :cond_0

    .line 1297
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1299
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->h:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->i:Z

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->j:I

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 1022
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1023
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->e()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 1034
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1035
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->d()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 1207
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->m:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->n:I

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->o:I

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->p:I

    return v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->q:I

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 1257
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->r:I

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 1268
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->k:Z

    return v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->t:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->u:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->b:Landroid/support/v7/media/s;

    invoke-virtual {v1}, Landroid/support/v7/media/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->t:Landroid/os/Bundle;

    return-object v0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 1369
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1370
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 1371
    return-void
.end method

.method final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->b:Landroid/support/v7/media/s;

    invoke-virtual {v0}, Landroid/support/v7/media/s;->a()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    return-object v0
.end method
