.class public Lorg/chromium/base/ApplicationStatus;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sActivity:Landroid/app/Activity;

.field private static final sActivityInfo:Ljava/util/Map;

.field private static sApplication:Landroid/app/Application;

.field private static final sApplicationStateListeners:Lorg/chromium/base/ObserverList;

.field private static sCachedApplicationState:Ljava/lang/Integer;

.field private static sCachedApplicationStateLock:Ljava/lang/Object;

.field private static final sGeneralActivityStateListeners:Lorg/chromium/base/ObserverList;

.field private static sNativeApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/base/ApplicationStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ApplicationStatus;->$assertionsDisabled:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationStateLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    .line 77
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Lorg/chromium/base/ObserverList;

    .line 84
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->sApplicationStateListeners:Lorg/chromium/base/ObserverList;

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$300()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lorg/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    return-object p0
.end method

.method static synthetic access$400(I)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->nativeOnApplicationStateChange(I)V

    return-void
.end method

.method private static determineApplicationState()I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v0, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 450
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;

    .line 451
    invoke-virtual {v0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->getStatus()I

    move-result v0

    .line 452
    if-eq v0, v4, :cond_0

    if-eq v0, v7, :cond_0

    const/4 v6, 0x6

    if-eq v0, v6, :cond_0

    .line 465
    :goto_1
    return v3

    .line 456
    :cond_0
    if-ne v0, v4, :cond_1

    move v2, v3

    .line 457
    goto :goto_0

    .line 458
    :cond_1
    if-ne v0, v7, :cond_5

    move v0, v3

    :goto_2
    move v1, v0

    .line 461
    goto :goto_0

    .line 463
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    .line 464
    :cond_3
    if-eqz v1, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :cond_4
    move v3, v4

    .line 465
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastTrackedFocusedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getRunningActivities()Ljava/util/List;
    .locals 4

    .prologue
    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 249
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_0
    return-object v1
.end method

.method public static getStateForActivity(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;

    .line 306
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->getStatus()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getStateForApplication()I
    .locals 2

    .prologue
    .line 314
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->determineApplicationState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationState:Ljava/lang/Integer;

    .line 318
    :cond_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static hasVisibleActivities()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 329
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v1

    .line 330
    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Lorg/chromium/base/BaseChromiumApplication;)V
    .locals 1

    .prologue
    .line 118
    sput-object p0, Lorg/chromium/base/ApplicationStatus;->sApplication:Landroid/app/Application;

    .line 120
    new-instance v0, Lorg/chromium/base/ApplicationStatus$1;

    invoke-direct {v0}, Lorg/chromium/base/ApplicationStatus$1;-><init>()V

    invoke-virtual {p0, v0}, Lorg/chromium/base/BaseChromiumApplication;->registerWindowFocusChangedListener(Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;)V

    .line 136
    new-instance v0, Lorg/chromium/base/ApplicationStatus$2;

    invoke-direct {v0}, Lorg/chromium/base/ApplicationStatus$2;-><init>()V

    invoke-virtual {p0, v0}, Lorg/chromium/base/BaseChromiumApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 170
    return-void
.end method

.method public static isEveryActivityDestroyed()Z
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static native nativeOnApplicationStateChange(I)V
.end method

.method private static onStateChange(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null activity is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 185
    :cond_1
    sput-object p0, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    .line 188
    :cond_2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v1

    .line 190
    if-ne p1, v2, :cond_4

    .line 191
    sget-boolean v0, Lorg/chromium/base/ApplicationStatus;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_3
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    new-instance v2, Lorg/chromium/base/ApplicationStatus$ActivityInfo;

    invoke-direct {v2, v3}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;-><init>(Lorg/chromium/base/ApplicationStatus$1;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_4
    sget-object v2, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lorg/chromium/base/ApplicationStatus;->sCachedApplicationState:Ljava/lang/Integer;

    .line 198
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;

    .line 201
    invoke-virtual {v0, p1}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->setStatus(I)V

    .line 204
    invoke-virtual {v0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->getListeners()Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 205
    invoke-interface {v0, p0, p1}, Lorg/chromium/base/ApplicationStatus$ActivityStateListener;->onActivityStateChange(Landroid/app/Activity;I)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_5
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 211
    invoke-interface {v0, p0, p1}, Lorg/chromium/base/ApplicationStatus$ActivityStateListener;->onActivityStateChange(Landroid/app/Activity;I)V

    goto :goto_1

    .line 214
    :cond_6
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v2

    .line 215
    if-eq v2, v1, :cond_7

    .line 216
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sApplicationStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 217
    invoke-interface {v0, v2}, Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;->onApplicationStateChange(I)V

    goto :goto_2

    .line 221
    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 222
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_8

    sput-object v3, Lorg/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    .line 225
    :cond_8
    return-void
.end method

.method public static onStateChangeForTesting(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 232
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V

    .line 233
    return-void
.end method

.method public static registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sApplicationStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public static registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 360
    sget-boolean v0, Lorg/chromium/base/ApplicationStatus;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;

    .line 363
    sget-boolean v1, Lorg/chromium/base/ApplicationStatus;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->getListeners()Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public static registerStateListenerForAllActivities(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method private static registerThreadSafeNativeApplicationStateListener()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lorg/chromium/base/ApplicationStatus$3;

    invoke-direct {v0}, Lorg/chromium/base/ApplicationStatus$3;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method public static unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;

    .line 376
    invoke-virtual {v0}, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->getListeners()Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_0
    return-void
.end method

.method public static unregisterApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->sApplicationStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method
