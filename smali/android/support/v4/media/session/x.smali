.class Landroid/support/v4/media/session/x;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/P;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/w;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/w;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/w;B)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/x;-><init>(Landroid/support/v4/media/session/w;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPlay()V

    .line 657
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onSkipToQueueItem(J)V

    .line 672
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/w;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    .line 712
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 662
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/w;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 647
    return-void
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/w;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onPause()V

    .line 677
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onSeekTo(J)V

    .line 707
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 667
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onSkipToNext()V

    .line 682
    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 717
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onSkipToPrevious()V

    .line 687
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onFastForward()V

    .line 692
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onRewind()V

    .line 697
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0}, Landroid/support/v4/media/session/w;->onStop()V

    .line 702
    return-void
.end method
