.class Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;
.super Ljava/lang/Object;
.source "MinidumpUploadRetry.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->sThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->sThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    .line 37
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->sThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    :cond_2
    :goto_0
    return-void

    .line 41
    :cond_3
    # getter for: Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;
    invoke-static {}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->access$000()Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    move-result-object v0

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$Scheduler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry$1;)V

    # setter for: Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->sSingleton:Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->access$002(Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;)Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;

    goto :goto_0
.end method
