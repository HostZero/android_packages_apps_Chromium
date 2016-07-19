.class public Lorg/chromium/chrome/browser/rlz/RevenueStats;
.super Ljava/lang/Object;
.source "RevenueStats.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sInstance:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/rlz/RevenueStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/rlz/RevenueStats;
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lorg/chromium/chrome/browser/rlz/RevenueStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 35
    sget-object v1, Lorg/chromium/chrome/browser/rlz/RevenueStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createRevenueStatsInstance()Lorg/chromium/chrome/browser/rlz/RevenueStats;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/rlz/RevenueStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/rlz/RevenueStats;

    return-object v0
.end method

.method private static native nativeSetRlzParameterValue(Ljava/lang/String;)V
.end method

.method private static native nativeSetSearchClient(Ljava/lang/String;)V
.end method


# virtual methods
.method public tabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
