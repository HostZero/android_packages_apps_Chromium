.class public Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;
.super Ljava/lang/Object;
.source "MinidumpPreparationCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileManager:Lorg/chromium/chrome/browser/crash/CrashFileManager;

.field private final mLogcatFile:Ljava/io/File;

.field private final mMinidumpFile:Ljava/io/File;

.field private final mRedirectIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mLogcatFile:Ljava/io/File;

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    .line 56
    iput-object p4, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mRedirectIntent:Landroid/content/Intent;

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mFileManager:Lorg/chromium/chrome/browser/crash/CrashFileManager;

    .line 58
    return-void
.end method

.method private static appendMinidump(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 119
    .line 122
    const/16 v0, 0x100

    :try_start_0
    new-array v0, v0, [B

    .line 123
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 126
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 127
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 131
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw v0

    .line 130
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 131
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    .line 130
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private augmentTargetFile(Ljava/util/List;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    const/4 v3, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mFileManager:Lorg/chromium/chrome/browser/crash/CrashFileManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".try0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->createNewTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 140
    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    invoke-static {v2}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->getBoundary(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 141
    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-static {v3, p1, v2}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->writeLogcat(Ljava/io/File;Ljava/util/List;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->appendMinidump(Ljava/io/File;Ljava/io/File;)V

    .line 148
    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    const-string/jumbo v2, "DumpPrepCallable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Fail to delete minidump file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    const-string/jumbo v4, "Error while tyring to annotate minidump file %s with logcat data"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mMinidumpFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 156
    const-string/jumbo v5, "DumpPrepCallable"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v4, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    if-eqz v3, :cond_0

    .line 158
    invoke-static {v3}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->deleteFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private static getBoundary(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 66
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    throw v0

    .line 69
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private getLogcatAsList()Ljava/util/List;
    .locals 5

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 168
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mLogcatFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 169
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mLogcatFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    throw v0

    :cond_1
    move-object v1, v2

    .line 175
    :cond_2
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 177
    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    return-object v0

    .line 177
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static writeLogcat(Ljava/io/File;Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 89
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 93
    const-string/jumbo v0, "Content-Disposition: form-data; name=\"logcat\"; filename=\"logcat\""

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 95
    const-string/jumbo v0, "Content-Type: text/plain"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 97
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void

    .line 104
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->getLogcatAsList()Ljava/util/List;

    move-result-object v1

    .line 189
    const/4 v0, 0x1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->augmentTargetFile(Ljava/util/List;)Z

    move-result v0

    .line 193
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mRedirectIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
