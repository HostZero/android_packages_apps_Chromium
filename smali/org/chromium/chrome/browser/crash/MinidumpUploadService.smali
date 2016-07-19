.class public Lorg/chromium/chrome/browser/crash/MinidumpUploadService;
.super Landroid/app/IntentService;
.source "MinidumpUploadService.java"


# static fields
.field static final ACTION_FIND_ALL:Ljava/lang/String; = "com.google.android.apps.chrome.crash.ACTION_FIND_ALL"

.field static final ACTION_UPLOAD:Ljava/lang/String; = "com.google.android.apps.chrome.crash.ACTION_UPLOAD"

.field static final BROWSER:Ljava/lang/String; = "Browser"

.field static final FILE_TO_UPLOAD_KEY:Ljava/lang/String; = "minidump_file"

.field static final FINISHED_LOGCAT_EXTRACTION_KEY:Ljava/lang/String; = "upload_extraction_completed"

.field static final GPU:Ljava/lang/String; = "GPU"

.field static final MAX_TRIES_ALLOWED:I = 0x3

.field static final OTHER:Ljava/lang/String; = "Other"

.field static final RENDERER:Ljava/lang/String; = "Renderer"

.field static final TYPES:[Ljava/lang/String;

.field static final UPLOAD_LOG_KEY:Ljava/lang/String; = "upload_log"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Renderer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "GPU"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Other"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "MinidmpUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->setIntentRedelivery(Z)V

    .line 70
    return-void
.end method

.method static createFindAndUploadAllCrashesIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string/jumbo v1, "com.google.android.apps.chrome.crash.ACTION_FIND_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    return-object v0
.end method

.method public static createFindAndUploadLastCrashIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string/jumbo v1, "com.google.android.apps.chrome.crash.ACTION_FIND_LAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method public static createUploadIntent(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string/jumbo v1, "com.google.android.apps.chrome.crash.ACTION_UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "minidump_file"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v1, "upload_log"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    return-object v0
.end method

.method protected static getCrashType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 267
    const/4 v2, 0x0

    .line 269
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 272
    const-string/jumbo v2, "Content-Disposition: form-data; name=\"ptype\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 275
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 276
    if-nez v0, :cond_1

    .line 277
    const-string/jumbo v0, "Other"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 300
    :goto_0
    return-object v0

    .line 280
    :cond_1
    :try_start_2
    const-string/jumbo v2, "browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    const-string/jumbo v0, "Browser"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 284
    :cond_2
    :try_start_3
    const-string/jumbo v2, "renderer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    const-string/jumbo v0, "Renderer"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 288
    :cond_3
    :try_start_4
    const-string/jumbo v2, "gpu-process"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    const-string/jumbo v0, "GPU"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 292
    :cond_4
    const-string/jumbo v0, "Other"

    .line 298
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 300
    :goto_1
    const-string/jumbo v0, "Other"

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 296
    :goto_2
    :try_start_5
    const-string/jumbo v2, "MinidmpUploadService"

    const-string/jumbo v3, "Error while reading crash file."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 298
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 295
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static getNewNameAfterSuccessfulUpload(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    const-string/jumbo v0, "dmp"

    const-string/jumbo v1, "up"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFindAndUploadAllCrashes()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 176
    new-instance v1, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    .line 177
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getAllMinidumpFiles()[Ljava/io/File;

    move-result-object v2

    .line 178
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashUploadLogFile()Ljava/io/File;

    move-result-object v1

    .line 179
    const-string/jumbo v3, "MinidmpUploadService"

    const-string/jumbo v4, "Attempting to upload accumulated crash dumps."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 181
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->createUploadIntent(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v4

    .line 182
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private handleFindAndUploadLastCrash(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    .line 147
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getAllMinidumpFilesSorted()[Ljava/io/File;

    move-result-object v1

    .line 148
    array-length v2, v1

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 154
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashUploadLogFile()Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->createUploadIntent(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "upload_extraction_completed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private handleUploadCrash(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 202
    const-string/jumbo v0, "minidump_file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    :cond_0
    const-string/jumbo v0, "MinidmpUploadService"

    const-string/jumbo v1, "Cannot upload crash data since minidump is absent."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    const-string/jumbo v1, "MinidmpUploadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot upload crash data since specified minidump "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not present."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->readAttemptNumber(Ljava/lang/String;)I

    move-result v2

    .line 217
    if-ge v2, v6, :cond_4

    if-gez v2, :cond_5

    .line 220
    :cond_4
    const-string/jumbo v1, "MinidmpUploadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Giving up on trying to upload "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " after failing to read a valid attempt number."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_5
    const-string/jumbo v3, "upload_log"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v1, v4}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->createMinidumpUploadCallable(Ljava/io/File;Ljava/io/File;)Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;

    move-result-object v3

    .line 231
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->call()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 234
    if-nez v3, :cond_6

    .line 236
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getNewNameAfterSuccessfulUpload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->incrementCrashSuccessUploadCount(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_6
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 242
    invoke-static {v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->tryIncrementAttemptNumber(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_8

    .line 244
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v6, :cond_7

    .line 246
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadRetry;->scheduleRetry(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 249
    :cond_7
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->incrementCrashFailureUploadCount(Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Giving up on trying to upload "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " number of tries."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 254
    :cond_8
    const-string/jumbo v1, "MinidmpUploadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to rename minidump "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private incrementCrashFailureUploadCount(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getCrashType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->incrementCrashFailureUploadCount(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private incrementCrashSuccessUploadCount(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getCrashType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->incrementCrashSuccessUploadCount(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public static storeBreakpadUploadStatsInUma(Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 126
    sget-object v3, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->TYPES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 127
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCrashSuccessUploadCount(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-lez v0, :cond_0

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Tab.AndroidCrashUpload_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7, v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCrashFailureUploadCount(Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-lez v0, :cond_1

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Tab.AndroidCrashUpload_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 133
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 140
    :cond_1
    invoke-virtual {p0, v5, v2}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCrashSuccessUploadCount(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p0, v5, v2}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCrashFailureUploadCount(Ljava/lang/String;I)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_2
    return-void
.end method

.method private tryPopulateLogcat(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 77
    const-string/jumbo v0, "upload_extraction_completed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    .line 80
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getMinidumpWithoutLogcat()[Ljava/io/File;

    move-result-object v1

    .line 82
    array-length v2, v1

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->onHandleIntent(Landroid/content/Intent;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/crash/LogcatExtractionService;->createLogcatExtractionTask(Landroid/content/Context;[Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static tryUploadAllCrashDumps(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 343
    invoke-static {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->createFindAndUploadAllCrashesIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 345
    return-void
.end method


# virtual methods
.method createMinidumpUploadCallable(Ljava/io/File;Ljava/io/File;)Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;-><init>(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string/jumbo v0, "upload_extraction_completed"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->tryPopulateLogcat(Landroid/content/Intent;)V

    goto :goto_0

    .line 98
    :cond_1
    const-string/jumbo v0, "com.google.android.apps.chrome.crash.ACTION_FIND_LAST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->handleFindAndUploadLastCrash(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v0, "com.google.android.apps.chrome.crash.ACTION_FIND_ALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->handleFindAndUploadAllCrashes()V

    goto :goto_0

    .line 102
    :cond_3
    const-string/jumbo v0, "com.google.android.apps.chrome.crash.ACTION_UPLOAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->handleUploadCrash(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v0, "MinidmpUploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Got unknown action from intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
