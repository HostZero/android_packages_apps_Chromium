.class final Landroid/support/v4/media/m;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/k;


# direct methods
.method constructor <init>(Landroid/support/v4/media/k;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/v4/media/m;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 54
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/m;->a:Landroid/support/v4/media/k;

    .line 1131
    iget-boolean v1, v0, Landroid/support/v4/media/k;->k:Z

    if-nez v1, :cond_0

    .line 1132
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/media/k;->k:Z

    .line 1133
    iget-object v1, v0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    iget-object v2, v0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 1134
    iget-object v1, v0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    iget-object v2, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1135
    iget v1, v0, Landroid/support/v4/media/k;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/support/v4/media/k;->a()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/m;->a:Landroid/support/v4/media/k;

    invoke-virtual {v0}, Landroid/support/v4/media/k;->c()V

    goto :goto_0
.end method
