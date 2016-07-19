.class public Lorg/chromium/sync/notifier/InvalidationClientNameProvider;
.super Ljava/lang/Object;
.source "InvalidationClientNameProvider.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/sync/notifier/InvalidationClientNameProvider;


# instance fields
.field private mGenerator:Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;

.field private final mLock:Ljava/lang/Object;

.field private mUniqueId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Lorg/chromium/sync/notifier/RandomizedInvalidationClientNameGenerator;

    invoke-direct {v0}, Lorg/chromium/sync/notifier/RandomizedInvalidationClientNameGenerator;-><init>()V

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mGenerator:Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;

    .line 36
    return-void
.end method

.method public static get()Lorg/chromium/sync/notifier/InvalidationClientNameProvider;
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->sInstance:Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    invoke-direct {v0}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;-><init>()V

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->sInstance:Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    .line 29
    :cond_0
    sget-object v0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->sInstance:Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getInvalidatorClientName()[B
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mUniqueId:[B

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mGenerator:Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;

    invoke-interface {v0}, Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;->generateInvalidatorClientName()[B

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mUniqueId:[B

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mUniqueId:[B

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreferredClientNameGenerator(Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->mGenerator:Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;

    .line 50
    return-void
.end method
