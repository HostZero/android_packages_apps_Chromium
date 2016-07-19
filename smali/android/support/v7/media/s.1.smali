.class public final Landroid/support/v7/media/s;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# instance fields
.field private final a:Landroid/support/v7/media/MediaRouteProvider;

.field private final b:Ljava/util/List;

.field private final c:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

.field private d:Landroid/support/v7/media/MediaRouteProviderDescriptor;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 1

    .prologue
    .line 1585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/s;->b:Ljava/util/List;

    .line 1586
    iput-object p1, p0, Landroid/support/v7/media/s;->a:Landroid/support/v7/media/MediaRouteProvider;

    .line 1587
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/s;->c:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    .line 1588
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/s;)Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/support/v7/media/s;->a:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/media/s;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/support/v7/media/s;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1644
    iget-object v0, p0, Landroid/support/v7/media/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1645
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1646
    iget-object v0, p0, Landroid/support/v7/media/s;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1650
    :goto_1
    return v0

    .line 1645
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1650
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1594
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 1595
    iget-object v0, p0, Landroid/support/v7/media/s;->a:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method final a(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/support/v7/media/s;->d:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    if-eq v0, p1, :cond_0

    .line 1637
    iput-object p1, p0, Landroid/support/v7/media/s;->d:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 1638
    const/4 v0, 0x1

    .line 1640
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Landroid/support/v7/media/s;->c:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/support/v7/media/s;->c:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaRouter.RouteProviderInfo{ packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2602
    iget-object v1, p0, Landroid/support/v7/media/s;->c:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
