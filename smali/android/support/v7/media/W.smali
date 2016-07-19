.class abstract Landroid/support/v7/media/W;
.super Landroid/support/v7/media/MediaRouteProvider;
.source "SystemMediaRouteProvider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "android"

    const-class v3, Landroid/support/v7/media/W;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v7/media/ag;)Landroid/support/v7/media/W;
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Landroid/support/v7/media/ac;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/ac;-><init>(Landroid/content/Context;Landroid/support/v7/media/ag;)V

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 56
    new-instance v0, Landroid/support/v7/media/ab;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/ab;-><init>(Landroid/content/Context;Landroid/support/v7/media/ag;)V

    goto :goto_0

    .line 58
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 59
    new-instance v0, Landroid/support/v7/media/X;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/X;-><init>(Landroid/content/Context;Landroid/support/v7/media/ag;)V

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Landroid/support/v7/media/ad;

    invoke-direct {v0, p0}, Landroid/support/v7/media/ad;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public b(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public c(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public d(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
