.class public Lorg/chromium/components/invalidation/InvalidationService;
.super Ljava/lang/Object;
.source "InvalidationService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNativeInvalidationServiceAndroid:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/InvalidationService;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lorg/chromium/components/invalidation/InvalidationService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mContext is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-wide p2, p0, Lorg/chromium/components/invalidation/InvalidationService;->mNativeInvalidationServiceAndroid:J

    .line 38
    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/components/invalidation/InvalidationService;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 55
    new-instance v0, Lorg/chromium/components/invalidation/InvalidationService;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/invalidation/InvalidationService;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private getInvalidatorClientId()[B
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->get()Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->getInvalidatorClientName()[B

    move-result-object v0

    return-object v0
.end method

.method private native nativeInvalidate(JILjava/lang/String;JLjava/lang/String;)V
.end method


# virtual methods
.method public notifyInvalidationToNativeChrome(ILjava/lang/String;JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 42
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 43
    iget-wide v2, p0, Lorg/chromium/components/invalidation/InvalidationService;->mNativeInvalidationServiceAndroid:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/chromium/components/invalidation/InvalidationService;->nativeInvalidate(JILjava/lang/String;JLjava/lang/String;)V

    .line 45
    return-void
.end method

.method public requestSyncFromNativeChromeForAllTypes()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 48
    const/16 v2, 0x3ec

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/components/invalidation/InvalidationService;->notifyInvalidationToNativeChrome(ILjava/lang/String;JLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public setRegisteredObjectIds([I[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    iget-object v1, p0, Lorg/chromium/components/invalidation/InvalidationService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 70
    invoke-static {v0, p1, p2}, Lorg/chromium/sync/notifier/InvalidationIntentProtocol;->createRegisterIntent(Landroid/accounts/Account;[I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/chromium/components/invalidation/InvalidationService;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/components/invalidation/InvalidationClientService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lorg/chromium/components/invalidation/InvalidationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    return-void
.end method
