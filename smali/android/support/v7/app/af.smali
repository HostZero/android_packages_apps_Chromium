.class final Landroid/support/v7/app/af;
.super Landroid/support/v7/media/g;
.source "MediaRouteChooserDialog.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/ae;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ae;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Landroid/support/v7/app/af;->a:Landroid/support/v7/app/ae;

    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ae;B)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/app/af;-><init>(Landroid/support/v7/app/ae;)V

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/app/af;->a:Landroid/support/v7/app/ae;

    invoke-virtual {v0}, Landroid/support/v7/app/ae;->b()V

    .line 336
    return-void
.end method

.method public final onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/app/af;->a:Landroid/support/v7/app/ae;

    invoke-virtual {v0}, Landroid/support/v7/app/ae;->b()V

    .line 346
    return-void
.end method

.method public final onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/app/af;->a:Landroid/support/v7/app/ae;

    invoke-virtual {v0}, Landroid/support/v7/app/ae;->b()V

    .line 341
    return-void
.end method

.method public final onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v7/app/af;->a:Landroid/support/v7/app/ae;

    invoke-virtual {v0}, Landroid/support/v7/app/ae;->dismiss()V

    .line 351
    return-void
.end method
