.class final Landroid/support/v4/media/l;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/k;


# direct methods
.method constructor <init>(Landroid/support/v4/media/k;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/media/l;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowAttached()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v4/media/l;->a:Landroid/support/v4/media/k;

    .line 1122
    iget-object v1, v0, Landroid/support/v4/media/k;->a:Landroid/content/Context;

    iget-object v2, v0, Landroid/support/v4/media/k;->f:Landroid/content/BroadcastReceiver;

    iget-object v3, v0, Landroid/support/v4/media/k;->d:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1123
    iget-object v1, v0, Landroid/support/v4/media/k;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/support/v4/media/k;->e:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    .line 1125
    new-instance v1, Landroid/media/RemoteControlClient;

    iget-object v2, v0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    invoke-direct {v1, v2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    .line 1126
    iget-object v1, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    iget-object v2, v0, Landroid/support/v4/media/k;->g:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 1127
    iget-object v1, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    iget-object v0, v0, Landroid/support/v4/media/k;->h:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 44
    return-void
.end method

.method public final onWindowDetached()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Landroid/support/v4/media/l;->a:Landroid/support/v4/media/k;

    .line 1200
    invoke-virtual {v0}, Landroid/support/v4/media/k;->c()V

    .line 1201
    iget-object v1, v0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, v0, Landroid/support/v4/media/k;->a:Landroid/content/Context;

    iget-object v2, v0, Landroid/support/v4/media/k;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1203
    iget-object v1, v0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 1204
    iput-object v3, v0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    .line 1205
    iput-object v3, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    .line 48
    :cond_0
    return-void
.end method
