.class public Lorg/chromium/chrome/browser/crash/LogcatExtractionService;
.super Landroid/app/IntentService;
.source "LogcatExtractionService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "LogcatExtraction"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionService;->setIntentRedelivery(Z)V

    .line 40
    return-void
.end method

.method private static createLogcatExtractionServiceCallable(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Ljava/util/concurrent/Callable;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static createLogcatExtractionTask(Landroid/content/Context;[Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 27
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 30
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const-string/jumbo v0, "minidump_filenames"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v0, "redirect_intent"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    return-object v1
.end method

.method private handleLogcatExtractionRequest(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    const-string/jumbo v0, "minidump_filenames"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    const-string/jumbo v0, "LogcatExtraction"

    const-string/jumbo v1, "Minidump filename not found. Cannot extra logcat."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string/jumbo v0, "redirect_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 58
    invoke-static {v2, v1, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionService;->createLogcatExtractionServiceCallable(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "LogcatExtraction"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/LogcatExtractionService;->handleLogcatExtractionRequest(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
