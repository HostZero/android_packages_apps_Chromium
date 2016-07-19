.class public Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
.super Lorg/chromium/chrome/browser/tabmodel/TabPersister;
.source "StorageDelegate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sBaseStateDirectoryFetchTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersister;-><init>()V

    .line 54
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->preloadStateDirectory()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;[BLandroid/util/SparseArray;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->updateTabEntriesFromMetadata([BLandroid/util/SparseArray;Ljava/util/List;)V

    return-void
.end method

.method private getFilename(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "chrome_document_activity.store"

    goto :goto_0
.end method

.method private preloadStateDirectory()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->sBaseStateDirectoryFetchTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->sBaseStateDirectoryFetchTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateTabEntriesFromMetadata([BLandroid/util/SparseArray;Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const/4 v2, 0x0

    .line 175
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 179
    :goto_0
    if-nez v2, :cond_1

    .line 195
    :cond_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string/jumbo v3, "StorageDelegate"

    const-string/jumbo v4, "I/O exception"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    iget-object v0, v2, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 182
    iget-object v0, v2, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    aget-object v3, v0, v1

    .line 183
    iget-object v0, v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->tabId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    iget-object v3, v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->canGoBack:Z

    goto :goto_2
.end method


# virtual methods
.method public getStateDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 135
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->sBaseStateDirectoryFetchTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ChromeDocumentActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected readMetadataFileBytes(Z)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_0

    .line 90
    :goto_0
    return-object v0

    .line 71
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->getFilename(Z)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 75
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 78
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 83
    :catch_0
    move-exception v2

    :goto_2
    :try_start_2
    const-string/jumbo v2, "StorageDelegate"

    const-string/jumbo v3, "DocumentTabModel file not found."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 81
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 87
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 85
    :goto_3
    :try_start_4
    const-string/jumbo v3, "StorageDelegate"

    const-string/jumbo v4, "I/O exception"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 84
    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    .line 83
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method public restoreTabEntries(ZLorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Landroid/util/SparseArray;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 209
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_2
    invoke-virtual {p2, p1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTasksFromRecents(Z)Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 216
    iget v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    .line 217
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_3
    invoke-virtual {p3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->canGoBack:Z

    goto :goto_0

    .line 227
    :cond_5
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;

    invoke-direct {v0, p0, p1, p3, p5}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;ZLandroid/util/SparseArray;Ljava/util/List;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    return-void
.end method

.method public restoreTabState(IZ)Lorg/chromium/chrome/browser/TabState;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->getTabStateFile(IZ)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/TabState;->restoreTabState(Ljava/io/File;Z)Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    return-object v0
.end method

.method public writeTaskFileBytes(Z[B)V
    .locals 6

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 105
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->getFilename(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_1
    const-string/jumbo v2, "StorageDelegate"

    const-string/jumbo v3, "DocumentTabModel file not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    :try_start_2
    const-string/jumbo v2, "StorageDelegate"

    const-string/jumbo v3, "I/O exception"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
