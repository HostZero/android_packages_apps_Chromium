.class final Landroid/support/v4/media/h;
.super Ljava/lang/Object;
.source "TransportMediator.java"

# interfaces
.implements Landroid/support/v4/media/j;


# instance fields
.field private synthetic a:Landroid/support/v4/media/g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/g;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/g;

    iget-object v0, v0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/g;

    iget-object v0, v0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/r;->onAudioFocusChange(I)V

    .line 66
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/g;

    iget-object v0, v0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/r;->onSeekTo(J)V

    .line 76
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/g;

    iget-object v0, v0, Landroid/support/v4/media/g;->b:Landroid/view/KeyEvent$Callback;

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    .line 62
    return-void
.end method
