.class public Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;
.super Ljava/lang/Object;
.source "MinidumpUploadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field protected static final CONTENT_TYPE_TMPL:Ljava/lang/String; = "multipart/form-data; boundary=%s"

.field protected static final CRASH_URL_STRING:Ljava/lang/String; = "https://clients2.google.com/cr/report"

.field protected static final PREF_DAY_UPLOAD_COUNT:Ljava/lang/String; = "crash_day_dump_upload_count"

.field protected static final PREF_LAST_UPLOAD_DAY:Ljava/lang/String; = "crash_dump_last_upload_day"

.field protected static final PREF_LAST_UPLOAD_WEEK:Ljava/lang/String; = "crash_dump_last_upload_week"

.field protected static final PREF_WEEK_UPLOAD_SIZE:Ljava/lang/String; = "crash_dump_week_upload_size"

.field public static final UPLOAD_COMMANDLINE_DISABLED:I = 0x3

.field public static final UPLOAD_FAILURE:I = 0x1

.field public static final UPLOAD_SUCCESS:I = 0x0

.field public static final UPLOAD_USER_DISABLED:I = 0x2


# instance fields
.field private final mFileToUpload:Ljava/io/File;

.field private final mHttpURLConnectionFactory:Lorg/chromium/chrome/browser/util/HttpURLConnectionFactory;

.field private final mLogfile:Ljava/io/File;

.field private final mPermManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/util/HttpURLConnectionFactoryImpl;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/util/HttpURLConnectionFactoryImpl;-><init>()V

    invoke-static {p3}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;-><init>(Ljava/io/File;Ljava/io/File;Lorg/chromium/chrome/browser/util/HttpURLConnectionFactory;Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;)V

    .line 75
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->removeOutdatedPrefs(Landroid/content/SharedPreferences;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lorg/chromium/chrome/browser/util/HttpURLConnectionFactory;Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    .line 82
    iput-object p2, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mLogfile:Ljava/io/File;

    .line 83
    iput-object p3, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mHttpURLConnectionFactory:Lorg/chromium/chrome/browser/util/HttpURLConnectionFactory;

    .line 84
    iput-object p4, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mPermManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    .line 85
    return-void
.end method

.method private appendUploadedEntryToLog(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 208
    new-instance v1, Ljava/io/FileWriter;

    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mLogfile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v0
.end method

.method private cleanupMinidumpFile()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->tryMarkAsUploaded(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string/jumbo v0, "MDUploadCallable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to mark "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as uploaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string/jumbo v0, "MDUploadCallable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-void
.end method

.method private configureConnectionForHttpPost(Ljava/net/HttpURLConnection;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 149
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->readBoundary()Ljava/lang/String;

    move-result-object v2

    .line 150
    if-nez v2, :cond_0

    .line 158
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 155
    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v3, "Content-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "multipart/form-data; boundary=%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 158
    goto :goto_0
.end method

.method private static getResponseContentAsString(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0
.end method

.method private handleExecutionResponse(Ljava/net/HttpURLConnection;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 170
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->isSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->getResponseContentAsString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    :goto_0
    const-string/jumbo v1, "MDUploadCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Minidump "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uploaded successfully, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->cleanupMinidumpFile()V

    .line 182
    :try_start_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->appendUploadedEntryToLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 197
    :goto_2
    return-object v0

    .line 173
    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    const-string/jumbo v0, "MDUploadCallable"

    const-string/jumbo v1, "Fail to write uploaded entry to log file"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 190
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Failed to upload %s with code: %d (%s)."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "MDUploadCallable"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method private static isSuccessful(I)Z
    .locals 1

    .prologue
    .line 271
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xca

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readBoundary()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 233
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 236
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    const-string/jumbo v1, "MDUploadCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ignoring invalid crash dump: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    return-object v0

    .line 240
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string/jumbo v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 242
    :cond_2
    const-string/jumbo v1, "MDUploadCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ignoring invalidly bound crash dump: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removeOutdatedPrefs(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 314
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "crash_day_dump_upload_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "crash_dump_last_upload_day"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "crash_dump_last_upload_week"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "crash_dump_week_upload_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    return-void
.end method

.method private static streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 302
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 303
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 304
    :goto_0
    if-ltz v0, :cond_0

    .line 305
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 306
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 309
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 310
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 90
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mPermManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;->isUploadCommandLineDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string/jumbo v1, "MDUploadCallable"

    const-string/jumbo v2, "Minidump upload is disabled by command line flag. Retaining file."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mPermManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;->isUploadUserPermitted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    const-string/jumbo v1, "MDUploadCallable"

    const-string/jumbo v2, "Minidump upload is not permitted by user. Marking file as uploaded for cleanup to prevent future uploads."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->cleanupMinidumpFile()V

    .line 99
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mPermManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;->isUploadLimited()Z

    move-result v1

    .line 103
    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mPermManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;->isUploadPermitted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    :cond_3
    const-string/jumbo v1, "MDUploadCallable"

    const-string/jumbo v2, "Minidump cannot currently be uploaded due to constraints."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mHttpURLConnectionFactory:Lorg/chromium/chrome/browser/util/HttpURLConnectionFactory;

    const-string/jumbo v2, "https://clients2.google.com/cr/report"

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/util/HttpURLConnectionFactory;->createHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 110
    if-nez v4, :cond_5

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_5
    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->configureConnectionForHttpPost(Ljava/net/HttpURLConnection;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 119
    :cond_6
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 121
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->handleExecutionResponse(Ljava/net/HttpURLConnection;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 123
    if-eqz v1, :cond_7

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 126
    :goto_2
    :try_start_3
    const-string/jumbo v2, "MDUploadCallable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error while uploading "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 131
    if-eqz v1, :cond_0

    .line 132
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 129
    :catchall_0
    move-exception v0

    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 131
    if-eqz v1, :cond_8

    .line 132
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    throw v0

    .line 129
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 124
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadCallable;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
