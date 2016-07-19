.class final Landroid/support/v4/media/session/G;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/B;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/B;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    .line 1798
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1799
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1808
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/G;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1809
    return-void
.end method

.method public final a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1802
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/G;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1803
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1805
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1821
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1887
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1826
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPlay()V

    goto :goto_0

    .line 1829
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/w;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1832
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/w;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1835
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/w;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1838
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/w;->onSkipToQueueItem(J)V

    goto :goto_0

    .line 1841
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPause()V

    goto :goto_0

    .line 1844
    :pswitch_6
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onStop()V

    goto :goto_0

    .line 1847
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onSkipToNext()V

    goto :goto_0

    .line 1850
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onSkipToPrevious()V

    goto :goto_0

    .line 1853
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onFastForward()V

    goto/16 :goto_0

    .line 1856
    :pswitch_a
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onRewind()V

    goto/16 :goto_0

    .line 1859
    :pswitch_b
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/w;->onSeekTo(J)V

    goto/16 :goto_0

    .line 1862
    :pswitch_c
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/w;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_0

    .line 1865
    :pswitch_d
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/w;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1868
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 1869
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1870
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1872
    iget-object v3, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v3}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/w;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2890
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2893
    iget-object v2, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v2}, Landroid/support/v4/media/session/B;->o(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    if-nez v2, :cond_2

    move-wide v2, v4

    .line 2894
    :goto_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2934
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->o(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->o(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    move v8, v1

    .line 2936
    :goto_2
    const-wide/16 v10, 0x204

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_4

    move v7, v1

    .line 2938
    :goto_3
    const-wide/16 v10, 0x202

    and-long/2addr v2, v10

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    move v0, v1

    .line 2940
    :goto_4
    if-eqz v8, :cond_6

    if-eqz v0, :cond_6

    .line 2941
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPause()V

    goto/16 :goto_0

    .line 2893
    :cond_2
    iget-object v2, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v2}, Landroid/support/v4/media/session/B;->o(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v2

    goto :goto_1

    .line 2897
    :sswitch_1
    const-wide/16 v0, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2898
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPlay()V

    goto/16 :goto_0

    .line 2903
    :sswitch_2
    const-wide/16 v0, 0x2

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPause()V

    goto/16 :goto_0

    .line 2908
    :sswitch_3
    const-wide/16 v0, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2909
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onSkipToNext()V

    goto/16 :goto_0

    .line 2913
    :sswitch_4
    const-wide/16 v0, 0x10

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onSkipToPrevious()V

    goto/16 :goto_0

    .line 2918
    :sswitch_5
    const-wide/16 v0, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2919
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onStop()V

    goto/16 :goto_0

    .line 2923
    :sswitch_6
    const-wide/16 v0, 0x40

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2924
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onFastForward()V

    goto/16 :goto_0

    .line 2928
    :sswitch_7
    const-wide/16 v0, 0x8

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onRewind()V

    goto/16 :goto_0

    :cond_3
    move v8, v6

    .line 2934
    goto/16 :goto_2

    :cond_4
    move v7, v6

    .line 2936
    goto/16 :goto_3

    :cond_5
    move v0, v6

    .line 2938
    goto/16 :goto_4

    .line 2942
    :cond_6
    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    .line 2943
    iget-object v0, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPlay()V

    goto/16 :goto_0

    .line 1877
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/E;

    .line 1878
    iget-object v1, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    invoke-static {v1}, Landroid/support/v4/media/session/B;->n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/media/session/E;->a:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/media/session/E;->b:Landroid/os/Bundle;

    iget-object v0, v0, Landroid/support/v4/media/session/E;->c:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/media/session/w;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 1881
    :pswitch_10
    iget-object v1, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, v6}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/B;II)V

    goto/16 :goto_0

    .line 1884
    :pswitch_11
    iget-object v1, p0, Landroid/support/v4/media/session/G;->a:Landroid/support/v4/media/session/B;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, v6}, Landroid/support/v4/media/session/B;->b(Landroid/support/v4/media/session/B;II)V

    goto/16 :goto_0

    .line 1824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_3
    .end packed-switch

    .line 2894
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_5
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method
