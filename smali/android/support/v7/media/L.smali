.class final Landroid/support/v7/media/L;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/G;)V
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 612
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/L;->a:Ljava/lang/ref/WeakReference;

    .line 613
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/media/L;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 617
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 621
    iget-object v0, p0, Landroid/support/v7/media/L;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/G;

    .line 622
    if-eqz v0, :cond_1

    .line 623
    iget v3, p1, Landroid/os/Message;->what:I

    .line 624
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 625
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 626
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 627
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    .line 1638
    packed-switch v3, :pswitch_data_0

    .line 1675
    :cond_0
    const/4 v0, 0x0

    .line 628
    :goto_0
    if-nez v0, :cond_1

    .line 629
    invoke-static {}, Landroid/support/v7/media/F;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled message from server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    return-void

    .line 1640
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/support/v7/media/G;->a(I)Z

    move v0, v2

    .line 1641
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 1645
    goto :goto_0

    .line 1648
    :pswitch_2
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1649
    :cond_2
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v5, v1}, Landroid/support/v7/media/G;->a(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 1654
    :pswitch_3
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1655
    :cond_3
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/G;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 1660
    :pswitch_4
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1661
    :cond_4
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/media/G;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 1667
    :pswitch_5
    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1668
    :cond_5
    if-nez v6, :cond_6

    const/4 v2, 0x0

    .line 1670
    :goto_1
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v2, v1}, Landroid/support/v7/media/G;->a(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 1668
    :cond_6
    const-string/jumbo v2, "error"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
