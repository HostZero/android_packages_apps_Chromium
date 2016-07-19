.class Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;
.super Landroid/os/HandlerThread;
.source "BaseGifDrawable.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 908
    const-string/jumbo v0, "GifDecoder"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 909
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 913
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;

    .line 914
    if-eqz v0, :cond_0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 956
    :goto_0
    return v0

    .line 918
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 956
    goto :goto_0

    .line 924
    :cond_2
    :pswitch_1
    :try_start_0
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :goto_1
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 931
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I

    move-result v3

    if-nez v3, :cond_5

    .line 933
    invoke-static {v0, v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z

    .line 946
    :cond_3
    :goto_2
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 947
    :cond_4
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->j(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I

    move-result v0

    invoke-virtual {v4, v5, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 949
    goto :goto_0

    .line 926
    :catch_0
    move-exception v3

    invoke-static {v0, v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z

    goto :goto_1

    .line 934
    :cond_5
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I

    move-result v3

    if-le v3, v1, :cond_8

    .line 935
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I

    move-result v3

    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 937
    :cond_6
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)V

    goto :goto_2

    .line 939
    :cond_7
    invoke-static {v0, v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z

    goto :goto_2

    .line 943
    :cond_8
    invoke-static {v0, v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z

    goto :goto_2

    .line 952
    :pswitch_2
    invoke-static {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)V

    move v0, v1

    .line 953
    goto :goto_0

    .line 918
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
