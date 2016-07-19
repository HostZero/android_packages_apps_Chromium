.class final Landroid/support/v4/media/session/i;
.super Landroid/os/Handler;
.source "MediaControllerCompat.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/h;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/h;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/h;

    .line 521
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 522
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/i;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->b(Landroid/support/v4/media/session/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 529
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/h;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 537
    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/h;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 543
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 546
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 549
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 552
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/i;->a:Landroid/support/v4/media/session/h;

    invoke-virtual {v0}, Landroid/support/v4/media/session/h;->a()V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
