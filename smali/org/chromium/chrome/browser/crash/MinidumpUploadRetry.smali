.class Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;
.super Ljava/lang/Object;
.source "MinidumpUploadRetry.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# static fields
.field private static sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;)Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    return-object p0
.end method

.method static scheduleRetry(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->tryUploadAllCrashDumps(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    goto :goto_0
.end method
