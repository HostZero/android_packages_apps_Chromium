.class public abstract Landroid/support/v4/media/session/w;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# instance fields
.field final mCallbackObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 513
    new-instance v0, Landroid/support/v4/media/session/y;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/y;-><init>(Landroid/support/v4/media/session/w;B)V

    .line 1025
    new-instance v1, Landroid/support/v4/media/session/S;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/S;-><init>(Landroid/support/v4/media/session/R;)V

    .line 513
    iput-object v1, p0, Landroid/support/v4/media/session/w;->mCallbackObj:Ljava/lang/Object;

    .line 519
    :goto_0
    return-void

    .line 514
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 515
    new-instance v0, Landroid/support/v4/media/session/x;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/x;-><init>(Landroid/support/v4/media/session/w;B)V

    .line 1057
    new-instance v1, Landroid/support/v4/media/session/Q;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/Q;-><init>(Landroid/support/v4/media/session/P;)V

    .line 515
    iput-object v1, p0, Landroid/support/v4/media/session/w;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    .line 517
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/w;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public onRewind()V
    .locals 0

    .prologue
    .line 606
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 612
    return-void
.end method