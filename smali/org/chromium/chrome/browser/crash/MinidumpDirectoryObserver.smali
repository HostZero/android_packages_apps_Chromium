.class public Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;
.super Landroid/os/FileObserver;
.source "MinidumpDirectoryObserver.java"


# static fields
.field public static final MINIDUMP_EXPERIMENT_NAME:Ljava/lang/String; = "MinidumpDirectoryObserver"

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/PathUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Crash Reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    invoke-static {p2}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->isMinidumpMIMEFirstTry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->createFindAndUploadLastCrashIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    sget-object v1, Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    const-string/jumbo v0, "MinidumpDirObserver"

    const-string/jumbo v1, "Detects a new minidump %s send intent to MinidumpUploadService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const-string/jumbo v0, "MobileBreakpadUploadAttempt"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 53
    throw v0
.end method
