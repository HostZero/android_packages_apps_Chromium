.class public final Landroid/support/v7/media/t;
.super Landroid/support/v7/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v7/media/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1499
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    .line 1500
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final a(Landroid/support/v7/media/b;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1543
    .line 1544
    iget-object v0, p0, Landroid/support/v7/media/t;->a:Landroid/support/v7/media/b;

    if-eq v0, p1, :cond_5

    .line 1545
    iput-object p1, p0, Landroid/support/v7/media/t;->a:Landroid/support/v7/media/b;

    .line 1546
    if-eqz p1, :cond_5

    .line 1547
    invoke-virtual {p1}, Landroid/support/v7/media/b;->b()Ljava/util/List;

    move-result-object v3

    .line 1548
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    move v0, v1

    .line 1550
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1551
    sget-object v6, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {p0}, Landroid/support/v7/media/t;->c()Landroid/support/v7/media/s;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j;Landroid/support/v7/media/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1552
    sget-object v6, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v6, v0}, Landroid/support/v7/media/j;->a(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1553
    if-eqz v0, :cond_4

    .line 1554
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    if-nez v3, :cond_4

    iget-object v6, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    move v3, v0

    .line 1559
    goto :goto_1

    :cond_0
    move v0, v2

    .line 1549
    goto :goto_0

    .line 1560
    :cond_1
    if-eqz v3, :cond_2

    .line 1561
    iput-object v4, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    .line 1565
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    invoke-super {p0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(Landroid/support/v7/media/b;)I

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_3
    move v1, v2

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3
.end method

.method public final a(I)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1531
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1532
    iget-object v0, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1533
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1534
    if-lez v0, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/t;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1537
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
