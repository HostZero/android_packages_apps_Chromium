.class public Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;
.super Ljava/lang/Object;
.source "IntentWithGesturesHandler.java"


# static fields
.field public static final EXTRA_USER_GESTURE_TOKEN:Ljava/lang/String; = "org.chromium.chrome.browser.user_gesture_token"

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sIntentWithGesturesHandler:Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;


# instance fields
.field private mIntentToken:[B

.field private mSecureRandom:Ljava/security/SecureRandom;

.field private mSecureRandomInitializer:Landroid/os/AsyncTask;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler$1;-><init>(Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandomInitializer:Landroid/os/AsyncTask;

    .line 77
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;
    .locals 2

    .prologue
    .line 50
    sget-object v1, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->sIntentWithGesturesHandler:Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->sIntentWithGesturesHandler:Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->sIntentWithGesturesHandler:Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mIntentToken:[B

    .line 121
    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mUri:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public getUserGestureAndClear(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mIntentToken:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mUri:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-string/jumbo v1, "org.chromium.chrome.browser.user_gesture_token"

    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetByteArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mIntentToken:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mUri:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 112
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->clear()V

    goto :goto_0
.end method

.method public onNewIntentWithGesture(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandomInitializer:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandomInitializer:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandomInitializer:Landroid/os/AsyncTask;

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_1

    .line 99
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :goto_2
    const-string/jumbo v1, "IntentGestureHandler"

    const-string/jumbo v2, "Error fetching SecureRandom"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mIntentToken:[B

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mSecureRandom:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mIntentToken:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 97
    const-string/jumbo v0, "org.chromium.chrome.browser.user_gesture_token"

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mIntentToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 98
    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->mUri:Ljava/lang/String;

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    goto :goto_2
.end method
