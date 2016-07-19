.class Lorg/chromium/chrome/browser/DeferredStartupHandler$1;
.super Landroid/os/AsyncTask;
.source "DeferredStartupHandler.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/DeferredStartupHandler;

.field final synthetic val$application:Lorg/chromium/chrome/browser/ChromeApplication;

.field final synthetic val$crashDumpUploadingCommandLineDisabled:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/DeferredStartupHandler;ZLorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->this$0:Lorg/chromium/chrome/browser/DeferredStartupHandler;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$crashDumpUploadingCommandLineDisabled:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    const-string/jumbo v0, "ChromeBrowserInitializer.onDeferredStartup.doInBackground"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$crashDumpUploadingCommandLineDisabled:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->enablePotentialCrashUploading()V

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->tryUploadAllCrashDumps(Landroid/content/Context;)V

    .line 72
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    .line 74
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->cleanOutAllNonFreshMinidumpFiles()V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->storeBreakpadUploadStatsInUma(Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->refreshAllWidgets(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->val$application:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->updatePrecachingEnabled(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const-string/jumbo v0, "ChromeBrowserInitializer.onDeferredStartup.doInBackground"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeBrowserInitializer.onDeferredStartup.doInBackground"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method
