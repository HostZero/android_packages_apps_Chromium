.class Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAuthTask:Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;

.field private final mContext:Landroid/content/Context;

.field private final mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 373
    const-class v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mContext:Landroid/content/Context;

    .line 388
    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTask:Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;

    .line 389
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 390
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 391
    return-void
.end method

.method static synthetic access$200(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTask:Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private attempt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;

    invoke-direct {v0, p0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 436
    return-void
.end method

.method public static runAuthTask(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;)V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    invoke-direct {v0, p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;-><init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;)V

    invoke-direct {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->attempt()V

    .line 384
    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 2

    .prologue
    .line 440
    sget-boolean v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 441
    :cond_0
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 444
    invoke-direct {p0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->attempt()V

    .line 446
    :cond_1
    return-void
.end method
