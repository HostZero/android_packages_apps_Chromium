.class public Lorg/chromium/content/browser/LocationProviderAdapter;
.super Ljava/lang/Object;
.source "LocationProviderAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/content/browser/LocationProviderAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/LocationProviderAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lorg/chromium/content/browser/LocationProviderFactory;->get(Landroid/content/Context;)Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/LocationProviderAdapter;->mImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/LocationProviderAdapter;)Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderAdapter;->mImpl:Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    return-object v0
.end method

.method static create(Landroid/content/Context;)Lorg/chromium/content/browser/LocationProviderAdapter;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/content/browser/LocationProviderAdapter;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/LocationProviderAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static native nativeNewErrorAvailable(Ljava/lang/String;)V
.end method

.method private static native nativeNewLocationAvailable(DDDZDZDZDZD)V
.end method

.method public static newErrorAvailable(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p0}, Lorg/chromium/content/browser/LocationProviderAdapter;->nativeNewErrorAvailable(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static newLocationAvailable(DDDZDZDZDZD)V
    .locals 0

    .prologue
    .line 84
    invoke-static/range {p0 .. p17}, Lorg/chromium/content/browser/LocationProviderAdapter;->nativeNewLocationAvailable(DDDZDZDZDZD)V

    .line 86
    return-void
.end method


# virtual methods
.method public start(Z)Z
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lorg/chromium/content/browser/LocationProviderAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/LocationProviderAdapter$1;-><init>(Lorg/chromium/content/browser/LocationProviderAdapter;Z)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 52
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lorg/chromium/content/browser/LocationProviderAdapter$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/LocationProviderAdapter$2;-><init>(Lorg/chromium/content/browser/LocationProviderAdapter;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 67
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 68
    return-void
.end method