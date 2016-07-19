.class public Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;
.super Ljava/lang/Object;
.source "WebappDirectoryManager.java"


# static fields
.field protected static final WEBAPP_DIRECTORY_NAME:Ljava/lang/String; = "WebappActivity"

.field private static final sMustCleanUpOldDirectories:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mCleanupTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->sMustCleanUpOldDirectories:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->sMustCleanUpOldDirectories:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->findStaleWebappDirectories(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method private findStaleWebappDirectories(Landroid/content/Context;Ljava/util/Set;)V
    .locals 10

    .prologue
    const/16 v8, 0xe

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->getBaseWebappDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 106
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->getBaseIntentsForAllTasks()Ljava/util/Set;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 109
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 110
    if-eqz v5, :cond_1

    const-string/jumbo v6, "webapp"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 111
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 119
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 120
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string/jumbo v5, "WebappActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 123
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    if-eqz v2, :cond_6

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 135
    if-eqz v5, :cond_4

    .line 136
    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_4

    aget-object v7, v5, v0

    .line 137
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 140
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_6

    .line 148
    array-length v4, v2

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v1, v2, v0

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    :cond_6
    return-void
.end method


# virtual methods
.method public cancelCleanup()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 91
    :cond_0
    return-void
.end method

.method public cleanUpDirectories(Landroid/content/Context;Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    .line 85
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;-><init>(Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->mCleanupTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected getBaseIntentsForAllTasks()Ljava/util/Set;
    .locals 3

    .prologue
    .line 187
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 189
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 192
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 193
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    return-object v1
.end method

.method final getBaseWebappDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "WebappActivity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getWebappDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    .line 163
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 164
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 166
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->getBaseWebappDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    const-string/jumbo v4, "WebappDirectoryManag"

    const-string/jumbo v5, "Failed to create web app directory."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    const-string/jumbo v4, "Android.StrictMode.WebappDir"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v2, v3, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
