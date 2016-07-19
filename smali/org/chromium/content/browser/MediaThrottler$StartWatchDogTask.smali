.class Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;
.super Landroid/os/AsyncTask;
.source "MediaThrottler.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/MediaThrottler;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/MediaThrottler;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/MediaThrottler;Lorg/chromium/content/browser/MediaThrottler$1;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;-><init>(Lorg/chromium/content/browser/MediaThrottler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # getter for: Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$000(Lorg/chromium/content/browser/MediaThrottler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # getter for: Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # getter for: Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I
    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$100(Lorg/chromium/content/browser/MediaThrottler;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    return-object v6

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    iget-object v2, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # getter for: Lorg/chromium/content/browser/MediaThrottler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/chromium/content/browser/MediaThrottler;->access$400(Lorg/chromium/content/browser/MediaThrottler;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/chromium/content/R$raw;->empty:I

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    # setter for: Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v2}, Lorg/chromium/content/browser/MediaThrottler;->access$202(Lorg/chromium/content/browser/MediaThrottler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # getter for: Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 114
    const-string/jumbo v0, "cr_MediaThrottler"

    const-string/jumbo v2, "Unable to create watch dog player, treat it as server crash."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # invokes: Lorg/chromium/content/browser/MediaThrottler;->onMediaServerCrash()V
    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$500(Lorg/chromium/content/browser/MediaThrottler;)V

    .line 119
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_3
    const-string/jumbo v2, "cr_MediaThrottler"

    const-string/jumbo v3, "Exception happens while creating the watch dog player."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    const-string/jumbo v2, "cr_MediaThrottler"

    const-string/jumbo v3, "Exception happens while creating the watch dog player."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    # getter for: Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
