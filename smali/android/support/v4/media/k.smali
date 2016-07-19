.class final Landroid/support/v4/media/k;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/media/AudioManager;

.field final c:Landroid/support/v4/media/j;

.field final d:Landroid/content/IntentFilter;

.field final e:Landroid/content/Intent;

.field final f:Landroid/content/BroadcastReceiver;

.field final g:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field final h:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field i:Landroid/app/PendingIntent;

.field j:Landroid/media/RemoteControlClient;

.field k:Z

.field l:I

.field private m:Landroid/view/View;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field private p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/j;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/support/v4/media/l;

    invoke-direct {v0, p0}, Landroid/support/v4/media/l;-><init>(Landroid/support/v4/media/k;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 50
    new-instance v0, Landroid/support/v4/media/m;

    invoke-direct {v0, p0}, Landroid/support/v4/media/m;-><init>(Landroid/support/v4/media/k;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 58
    new-instance v0, Landroid/support/v4/media/n;

    invoke-direct {v0, p0}, Landroid/support/v4/media/n;-><init>(Landroid/support/v4/media/k;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->f:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Landroid/support/v4/media/o;

    invoke-direct {v0, p0}, Landroid/support/v4/media/o;-><init>(Landroid/support/v4/media/k;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 76
    new-instance v0, Landroid/support/v4/media/p;

    invoke-direct {v0, p0}, Landroid/support/v4/media/p;-><init>(Landroid/support/v4/media/k;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->g:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 83
    new-instance v0, Landroid/support/v4/media/q;

    invoke-direct {v0, p0}, Landroid/support/v4/media/q;-><init>(Landroid/support/v4/media/k;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->h:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/k;->l:I

    .line 98
    iput-object p1, p0, Landroid/support/v4/media/k;->a:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    .line 100
    iput-object p3, p0, Landroid/support/v4/media/k;->m:Landroid/view/View;

    .line 101
    iput-object p4, p0, Landroid/support/v4/media/k;->c:Landroid/support/v4/media/j;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":transport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/k;->n:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/media/k;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/media/k;->e:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Landroid/support/v4/media/k;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/k;->d:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Landroid/support/v4/media/k;->d:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/support/v4/media/k;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/support/v4/media/k;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/k;->o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 108
    iget-object v0, p0, Landroid/support/v4/media/k;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/k;->p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-boolean v0, p0, Landroid/support/v4/media/k;->r:Z

    if-nez v0, :cond_0

    .line 143
    iput-boolean v3, p0, Landroid/support/v4/media/k;->r:Z

    .line 144
    iget-object v0, p0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/k;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 147
    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/support/v4/media/k;->r:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/k;->r:Z

    .line 186
    iget-object v0, p0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/k;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 188
    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/support/v4/media/k;->b()V

    .line 192
    iget-boolean v0, p0, Landroid/support/v4/media/k;->k:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/k;->k:Z

    .line 194
    iget-object v0, p0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 195
    iget-object v0, p0, Landroid/support/v4/media/k;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/k;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 197
    :cond_0
    return-void
.end method
