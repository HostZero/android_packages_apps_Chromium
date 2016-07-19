.class final Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 1

    .prologue
    .line 581
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 583
    return-void
.end method

.method private processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService;

    .line 612
    if-eqz v0, :cond_0

    .line 613
    packed-switch p1, :pswitch_data_0

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 615
    :pswitch_0
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z
    invoke-static {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->access$1200(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z

    move-result v1

    goto :goto_0

    .line 618
    :pswitch_1
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z
    invoke-static {v0, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->access$1300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)Z

    move-result v1

    goto :goto_0

    .line 621
    :pswitch_2
    const-string/jumbo v2, "routeId"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    if-eqz v2, :cond_0

    .line 623
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z
    invoke-static {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1400(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 630
    :pswitch_3
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z
    invoke-static {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->access$1500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z

    move-result v1

    goto :goto_0

    .line 633
    :pswitch_4
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z
    invoke-static {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->access$1600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z

    move-result v1

    goto :goto_0

    .line 636
    :pswitch_5
    if-nez p6, :cond_1

    .line 640
    :goto_1
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z
    invoke-static {v0, p2, p3, p4, v1}, Landroid/support/v7/media/MediaRouteProviderService;->access$1700(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z

    move-result v1

    goto :goto_0

    .line 636
    :cond_1
    const-string/jumbo v2, "unselectReason"

    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 643
    :pswitch_6
    const-string/jumbo v2, "volume"

    const/4 v3, -0x1

    invoke-virtual {p6, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 644
    if-ltz v2, :cond_0

    .line 645
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z
    invoke-static {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1800(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z

    move-result v1

    goto :goto_0

    .line 652
    :pswitch_7
    const-string/jumbo v2, "volume"

    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 653
    if-eqz v2, :cond_0

    .line 654
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z
    invoke-static {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1900(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z

    move-result v1

    goto :goto_0

    .line 661
    :pswitch_8
    instance-of v2, p5, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 662
    check-cast p5, Landroid/content/Intent;

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    invoke-static {v0, p2, p3, p4, p5}, Landroid/support/v7/media/MediaRouteProviderService;->access$2000(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v1

    goto :goto_0

    .line 668
    :pswitch_9
    if-eqz p5, :cond_2

    instance-of v2, p5, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 669
    :cond_2
    check-cast p5, Landroid/os/Bundle;

    invoke-static {p5}, Landroid/support/v7/media/d;->a(Landroid/os/Bundle;)Landroid/support/v7/media/d;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/media/d;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/d;)Z
    invoke-static {v0, p2, p3, v1}, Landroid/support/v7/media/MediaRouteProviderService;->access$2100(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;ILandroid/support/v7/media/d;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 587
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 588
    invoke-static {v2}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget v1, p1, Landroid/os/Message;->what:I

    .line 590
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 591
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 592
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    .line 594
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    # getter for: Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string/jumbo v0, "MediaRouteProviderSrv"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1000(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": Message failed, what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", requestId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", arg="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", obj="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", data="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V
    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouteProviderService;->access$1100(Landroid/os/Messenger;I)V

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    # getter for: Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    const-string/jumbo v0, "MediaRouteProviderSrv"

    const-string/jumbo v1, "Ignoring message without valid reply messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
