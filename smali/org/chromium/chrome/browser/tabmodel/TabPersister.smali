.class public abstract Lorg/chromium/chrome/browser/tabmodel/TabPersister;
.super Ljava/lang/Object;
.source "TabPersister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTabState(IZ)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;->getStateDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/TabState;->deleteTabState(Ljava/io/File;IZ)V

    .line 72
    return-void
.end method

.method protected abstract getStateDirectory()Ljava/io/File;
.end method

.method protected getTabStateFile(IZ)Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;->getStateDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/TabState;->getTabStateFile(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected openTabStateOutputStream(IZ)Ljava/io/FileOutputStream;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;->getTabStateFile(IZ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public saveTabState(IZLorg/chromium/chrome/browser/TabState;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p3, :cond_0

    .line 62
    :goto_0
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;->openTabStateOutputStream(IZ)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 49
    invoke-static {v1, p3, p2}, Lorg/chromium/chrome/browser/TabState;->saveState(Ljava/io/FileOutputStream;Lorg/chromium/chrome/browser/TabState;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v2, "TabPersister"

    const-string/jumbo v3, "FileNotFoundException while attempt to TabState."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 54
    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v2, "TabPersister"

    const-string/jumbo v3, "IO Exception while attempting to save tab state."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 56
    :catch_2
    move-exception v2

    :try_start_3
    const-string/jumbo v2, "TabPersister"

    const-string/jumbo v3, "Out of memory error while attempting to save tab state.  Erasing."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;->deleteTabState(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
