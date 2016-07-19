.class public Lorg/chromium/chrome/browser/tab/TabIdManager;
.super Ljava/lang/Object;
.source "TabIdManager.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final PREF_NEXT_ID:Ljava/lang/String; = "org.chromium.chrome.browser.tab.TabIdManager.NEXT_ID"

.field private static sInstance:Lorg/chromium/chrome/browser/tab/TabIdManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabIdManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "org.chromium.chrome.browser.tab.TabIdManager.NEXT_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 97
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/tab/TabIdManager;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lorg/chromium/chrome/browser/tab/TabIdManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/tab/TabIdManager;->sInstance:Lorg/chromium/chrome/browser/tab/TabIdManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/tab/TabIdManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tab/TabIdManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabIdManager;->sInstance:Lorg/chromium/chrome/browser/tab/TabIdManager;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lorg/chromium/chrome/browser/tab/TabIdManager;->sInstance:Lorg/chromium/chrome/browser/tab/TabIdManager;

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
.method public final generateValidId(I)I
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 66
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabIdManager;->incrementIdCounterTo(I)V

    .line 67
    return p1
.end method

.method public final incrementIdCounterTo(I)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int v0, p1, v0

    .line 81
    if-gez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.chrome.browser.tab.TabIdManager.NEXT_ID"

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
