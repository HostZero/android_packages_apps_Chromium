.class final Landroid/support/v7/media/l;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private synthetic b:Landroid/support/v7/media/j;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/j;)V
    .locals 1

    .prologue
    .line 2681
    iput-object p1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/l;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/j;B)V
    .locals 0

    .prologue
    .line 2681
    invoke-direct {p0, p1}, Landroid/support/v7/media/l;-><init>(Landroid/support/v7/media/j;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2702
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2703
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 2707
    iget v6, p1, Landroid/os/Message;->what:I

    .line 2708
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3736
    packed-switch v6, :pswitch_data_0

    .line 2717
    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->f(Landroid/support/v7/media/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_1

    .line 2718
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->f(Landroid/support/v7/media/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter;

    .line 2719
    if-nez v1, :cond_0

    .line 2720
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->f(Landroid/support/v7/media/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_1

    .line 3738
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->g(Landroid/support/v7/media/j;)Landroid/support/v7/media/W;

    move-result-object v3

    move-object v1, v2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v1}, Landroid/support/v7/media/W;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 3741
    :pswitch_2
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->g(Landroid/support/v7/media/j;)Landroid/support/v7/media/W;

    move-result-object v3

    move-object v1, v2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v1}, Landroid/support/v7/media/W;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 3744
    :pswitch_3
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->g(Landroid/support/v7/media/j;)Landroid/support/v7/media/W;

    move-result-object v3

    move-object v1, v2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v1}, Landroid/support/v7/media/W;->c(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 3747
    :pswitch_4
    iget-object v1, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->g(Landroid/support/v7/media/j;)Landroid/support/v7/media/W;

    move-result-object v3

    move-object v1, v2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v1}, Landroid/support/v7/media/W;->d(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2722
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/support/v7/media/l;->a:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    .line 2724
    goto :goto_1

    .line 2726
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v5

    .line 2727
    :goto_2
    if-ge v4, v7, :cond_5

    .line 2728
    iget-object v1, p0, Landroid/support/v7/media/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v7/media/h;

    move-object v3, v0

    .line 3753
    iget-object v8, v3, Landroid/support/v7/media/h;->a:Landroid/support/v7/media/MediaRouter;

    .line 3754
    iget-object v9, v3, Landroid/support/v7/media/h;->b:Landroid/support/v7/media/g;

    .line 3755
    const v1, 0xff00

    and-int/2addr v1, v6

    sparse-switch v1, :sswitch_data_0

    .line 2727
    :cond_2
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 3757
    :sswitch_0
    move-object v0, v2

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-object v1, v0

    .line 3810
    iget v10, v3, Landroid/support/v7/media/h;->d:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_3

    iget-object v3, v3, Landroid/support/v7/media/h;->c:Landroid/support/v7/media/e;

    invoke-virtual {v1, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/e;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 3758
    :goto_4
    if-eqz v3, :cond_2

    .line 3761
    packed-switch v6, :pswitch_data_1

    goto :goto_3

    .line 3763
    :pswitch_5
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2731
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/v7/media/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v1

    :cond_4
    move v3, v5

    .line 3810
    goto :goto_4

    .line 3766
    :pswitch_6
    :try_start_2
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    .line 3769
    :pswitch_7
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    .line 3772
    :pswitch_8
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    .line 3775
    :pswitch_9
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    .line 3778
    :pswitch_a
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    .line 3781
    :pswitch_b
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_3

    .line 3787
    :sswitch_1
    move-object v0, v2

    check-cast v0, Landroid/support/v7/media/s;

    move-object v1, v0

    .line 3788
    packed-switch v6, :pswitch_data_2

    goto :goto_3

    .line 3790
    :pswitch_c
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V

    goto :goto_3

    .line 3793
    :pswitch_d
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V

    goto :goto_3

    .line 3796
    :pswitch_e
    invoke-virtual {v9, v8, v1}, Landroid/support/v7/media/g;->onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2731
    :cond_5
    iget-object v1, p0, Landroid/support/v7/media/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2732
    return-void

    .line 3736
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 3755
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    .line 3761
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 3788
    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
