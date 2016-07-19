.class public Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;
.super Landroid/app/IntentService;
.source "MinidumpPreparationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "DumpPrepService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->setIntentRedelivery(Z)V

    .line 47
    return-void
.end method

.method private createMinidumpPreparationCallable(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/concurrent/Callable;
    .locals 5

    .prologue
    .line 50
    const-string/jumbo v0, "minidump"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "logcat"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    .line 53
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 54
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    const-string/jumbo v0, "redirect_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 56
    new-instance v2, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3, v1, v0}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/Intent;)V

    return-object v2
.end method

.method public static createMinidumpPreparationIntent(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string/jumbo v1, "minidump"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    const-string/jumbo v1, "logcat"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_1
    if-eqz p3, :cond_2

    .line 39
    const-string/jumbo v1, "redirect_intent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    :cond_2
    return-object v0
.end method

.method private handleMinidumpPreparationRequest(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->createMinidumpPreparationCallable(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "DumpPrepService"

    const-string/jumbo v1, "Fail to prepare minidump with logcat!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v1, "DumpPrepService"

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
    .line 72
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->handleMinidumpPreparationRequest(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
