.class public Lorg/chromium/components/gcm_driver/GCMDriver;
.super Ljava/lang/Object;
.source "GCMDriver.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNativeGCMDriverAndroid:J

.field private mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/components/gcm_driver/GCMDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/components/gcm_driver/GCMDriver;->$assertionsDisabled:Z

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    .line 45
    iput-object p3, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;

    invoke-direct {v0, p3}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/components/gcm_driver/GCMDriver;)Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/components/gcm_driver/GCMDriver;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/components/gcm_driver/GCMDriver;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/chromium/components/gcm_driver/GCMDriver;->nativeOnRegisterFinished(JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/components/gcm_driver/GCMDriver;JLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/components/gcm_driver/GCMDriver;->nativeOnUnregisterFinished(JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400()Lorg/chromium/components/gcm_driver/GCMDriver;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/components/gcm_driver/GCMDriver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p7}, Lorg/chromium/components/gcm_driver/GCMDriver;->nativeOnMessageReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method private static create(JLandroid/content/Context;)Lorg/chromium/components/gcm_driver/GCMDriver;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMDriver;-><init>(JLandroid/content/Context;)V

    .line 63
    sput-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 72
    sget-boolean v0, Lorg/chromium/components/gcm_driver/GCMDriver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    .line 75
    return-void
.end method

.method private static launchNativeThen(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 192
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p0}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 179
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V

    .line 181
    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string/jumbo v1, "GCMDriver"

    const-string/jumbo v2, "Failed to start browser process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 184
    :cond_1
    :try_start_1
    const-string/jumbo v0, "GCMDriver"

    const-string/jumbo v1, "Started browser process, but failed to instantiate GCMDriver."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private native nativeOnMessageReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
.end method

.method private native nativeOnRegisterFinished(JLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativeOnUnregisterFinished(JLjava/lang/String;Z)V
.end method

.method public static onMessageReceived(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 126
    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver$3;

    invoke-direct {v0, p2, p1}, Lorg/chromium/components/gcm_driver/GCMDriver$3;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/chromium/components/gcm_driver/GCMDriver;->launchNativeThen(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public static overrideSubscriberForTesting(Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;)V
    .locals 1

    .prologue
    .line 158
    sget-boolean v0, Lorg/chromium/components/gcm_driver/GCMDriver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_0
    sget-boolean v0, Lorg/chromium/components/gcm_driver/GCMDriver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_1
    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    iput-object p0, v0, Lorg/chromium/components/gcm_driver/GCMDriver;->mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    .line 161
    return-void
.end method

.method private register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMDriver$1;-><init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/components/gcm_driver/GCMDriver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method private unregister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMDriver$2;-><init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/components/gcm_driver/GCMDriver$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method
