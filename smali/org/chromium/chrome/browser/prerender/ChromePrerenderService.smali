.class public Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;
.super Landroid/app/Service;
.source "ChromePrerenderService.java"


# static fields
.field public static final KEY_PRERENDERED_URL:Ljava/lang/String; = "url_to_prerender"

.field public static final KEY_PRERENDER_HEIGHT:Ljava/lang/String; = "prerender_height"

.field public static final KEY_PRERENDER_WIDTH:Ljava/lang/String; = "prerender_width"

.field public static final KEY_REFERRER:Ljava/lang/String; = "referrer"

.field public static final MSG_CANCEL_PRERENDER:I = 0x2

.field public static final MSG_PRERENDER_URL:I = 0x1


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->prerenderUrl(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private prerenderUrl(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/WarmupManager;->prerenderUrl(Ljava/lang/String;Ljava/lang/String;II)V

    .line 146
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url_to_prerender"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "referrer"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prerender_width"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 121
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prerender_height"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;-><init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 132
    :pswitch_1
    new-instance v0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$2;-><init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    .prologue
    .line 88
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$IncomingHandler;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$IncomingHandler;-><init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->mMessenger:Landroid/os/Messenger;

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 92
    move-object v0, v2

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    move-object v1, v0

    .line 93
    new-instance v3, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTask;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTask;-><init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;

    const/4 v5, 0x0

    new-instance v6, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeApplication;->getChildProcessCreationParams()Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V

    .line 97
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$dimen;->control_container_height:I

    invoke-static {v1, v2, v3}, Lorg/chromium/chrome/browser/ApplicationInitialization;->enableFullscreenFlags(Landroid/content/res/Resources;Landroid/content/Context;I)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    .line 101
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ProcessInitException while starting the browser process"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
