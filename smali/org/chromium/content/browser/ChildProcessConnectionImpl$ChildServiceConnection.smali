.class Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mBindFlags:I

.field private mBound:Z

.field final synthetic this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;IZ)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    .line 125
    if-eqz p3, :cond_0

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->addExtraBindFlags(I)I

    move-result p2

    .line 128
    :cond_0
    iput p2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBindFlags:I

    .line 129
    return-void
.end method

.method private createServiceBindIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->addIntentExtras(Landroid/content/Intent;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceName:Landroid/content/ComponentName;
    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    return-object v0
.end method


# virtual methods
.method bind([Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    if-nez v0, :cond_2

    .line 134
    :try_start_0
    const-string/jumbo v0, "ChildProcessConnectionImpl.ChildServiceConnection.bind"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->createServiceBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/app/ChromiumLinkerParams;->addIntentExtras(Landroid/content/Intent;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBindFlags:I

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const-string/jumbo v0, "ChildProcessConnectionImpl.ChildServiceConnection.bind"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    return v0

    .line 144
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChildProcessConnectionImpl.ChildServiceConnection.bind"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$500(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ChildProcessConnectionImpl.ChildServiceConnection.onServiceConnected"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    const/4 v2, 0x1

    # setter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$502(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z

    .line 173
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {p2}, Lorg/chromium/content/common/IChildProcessService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessService;

    move-result-object v2

    # setter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$602(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/common/IChildProcessService;)Lorg/chromium/content/common/IChildProcessService;

    .line 176
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$700(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # invokes: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->doConnectionSetupLocked()V
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$800(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ChildProcessConnectionImpl.ChildServiceConnection.onServiceConnected"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 183
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 180
    :catchall_1
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "ChildProcessConnectionImpl.ChildServiceConnection.onServiceConnected"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$900(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    monitor-exit v1

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # invokes: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->isCurrentlyOomProtected()Z
    invoke-static {v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z

    move-result v2

    # setter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1002(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z

    .line 198
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    const/4 v2, 0x1

    # setter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$902(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z

    .line 199
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "onServiceDisconnected (crash or killed by oom): pid=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I
    invoke-static {v5}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->stop()V

    .line 201
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-interface {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;->onChildProcessDied(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 204
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;->onConnected(I)V

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1402(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    .line 208
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    # getter for: Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    .line 155
    :cond_0
    return-void
.end method
