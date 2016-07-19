.class Lorg/chromium/chrome/browser/gcore/LifecycleHook;
.super Ljava/lang/Object;
.source "LifecycleHook.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# static fields
.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mClientHelpers:Ljava/util/Set;

.field private mIsApplicationVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mClientHelpers:Ljava/util/Set;

    .line 53
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mIsApplicationVisible:Z

    .line 54
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 76
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    .line 77
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mIsApplicationVisible:Z

    if-ne v1, v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mClientHelpers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mIsApplicationVisible:Z

    .line 84
    iget-object v1, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mClientHelpers:Ljava/util/Set;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mClientHelpers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;

    .line 86
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/gcore/LifecycleHook;->mIsApplicationVisible:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->restoreConnectedState()V

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->scheduleDisconnection()V

    goto :goto_1

    .line 89
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
