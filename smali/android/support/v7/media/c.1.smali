.class public Landroid/support/v7/media/c;
.super Ljava/lang/Object;
.source "MediaRouteDescriptor.java"


# instance fields
.field private final a:Landroid/os/Bundle;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/b;)V
    .locals 2

    .prologue
    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    if-nez p1, :cond_0

    .line 1353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/support/v7/media/b;->a(Landroid/support/v7/media/b;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    .line 1358
    invoke-static {p1}, Landroid/support/v7/media/b;->b(Landroid/support/v7/media/b;)V

    .line 1359
    invoke-static {p1}, Landroid/support/v7/media/b;->c(Landroid/support/v7/media/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v7/media/b;->c(Landroid/support/v7/media/b;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    .line 1362
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    .line 1343
    invoke-virtual {p0, p1}, Landroid/support/v7/media/c;->a(Ljava/lang/String;)Landroid/support/v7/media/c;

    .line 1344
    invoke-virtual {p0, p2}, Landroid/support/v7/media/c;->b(Ljava/lang/String;)Landroid/support/v7/media/c;

    .line 1345
    return-void
.end method

.method public static a(Landroid/support/v7/media/y;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2111
    new-instance v0, Landroid/support/v7/media/z;

    invoke-direct {v0, p0}, Landroid/support/v7/media/z;-><init>(Landroid/support/v7/media/y;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2068
    check-cast p0, Landroid/media/MediaRouter;

    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2088
    check-cast p0, Landroid/media/MediaRouter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2082
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 2084
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2092
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2208
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 2209
    return-void
.end method

.method public static c(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2212
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 2213
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2160
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 2161
    return-void
.end method

.method public static d(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2216
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 2217
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2228
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    check-cast p1, Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 2230
    return-void
.end method

.method public static e(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2220
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 2221
    return-void
.end method

.method public static f(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2224
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 2225
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/media/b;
    .locals 4

    .prologue
    .line 1631
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "controlFilters"

    iget-object v2, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1637
    :cond_0
    new-instance v0, Landroid/support/v7/media/b;

    iget-object v1, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/media/b;-><init>(Landroid/os/Bundle;Ljava/util/List;B)V

    return-object v0
.end method

.method public a(I)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "playbackType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1558
    return-object p0
.end method

.method public a(Landroid/content/IntentFilter;)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1520
    if-nez p1, :cond_0

    .line 1521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1524
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    .line 1527
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1528
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_2
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1537
    if-nez p1, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1542
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 1543
    invoke-virtual {p0, v0}, Landroid/support/v7/media/c;->a(Landroid/content/IntentFilter;)Landroid/support/v7/media/c;

    goto :goto_0

    .line 1546
    :cond_1
    return-object p0
.end method

.method public a(Z)Landroid/support/v7/media/c;
    .locals 3

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1473
    return-object p0
.end method

.method public b(I)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "playbackStream"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1566
    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    return-object p0
.end method

.method public b(Z)Landroid/support/v7/media/c;
    .locals 3

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "connecting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1483
    return-object p0
.end method

.method public c(I)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1586
    return-object p0
.end method

.method public c(Ljava/lang/String;)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    return-object p0
.end method

.method public d(I)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1594
    return-object p0
.end method

.method public e(I)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeHandling"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1606
    return-object p0
.end method

.method public f(I)Landroid/support/v7/media/c;
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "presentationDisplayId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1614
    return-object p0
.end method
