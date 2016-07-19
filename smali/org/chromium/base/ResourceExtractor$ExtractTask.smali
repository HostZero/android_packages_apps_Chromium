.class Lorg/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# instance fields
.field private final mCompletionCallbacks:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/base/ResourceExtractor;


# direct methods
.method private constructor <init>(Lorg/chromium/base/ResourceExtractor;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ResourceExtractor;Lorg/chromium/base/ResourceExtractor$1;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private beginTraceSection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    # getter for: Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    # getter for: Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    if-nez v0, :cond_1

    .line 204
    const-string/jumbo v0, "pak_timestamp-"

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    const-string/jumbo v0, "pak_timestamp-"

    goto :goto_0

    .line 207
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pak_timestamp-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;

    invoke-direct {v1, p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;-><init>(Lorg/chromium/base/ResourceExtractor$ExtractTask;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 222
    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doInBackgroundImpl()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    # invokes: Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;
    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string/jumbo v0, "cr.base"

    const-string/jumbo v2, "Unable to create pak resources directory!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string/jumbo v0, "checkPakTimeStamp"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-direct {p0, v2}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 105
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 107
    if-eqz v3, :cond_2

    .line 108
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    # invokes: Lorg/chromium/base/ResourceExtractor;->deleteFiles()V
    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)V

    .line 111
    :cond_2
    const-string/jumbo v0, "WalkAssets"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 112
    const/16 v0, 0x4000

    new-array v4, v0, [B

    .line 115
    :try_start_1
    # getter for: Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$200()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_4

    aget-object v7, v5, v0

    .line 116
    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    const-string/jumbo v9, "ExtractResource"

    invoke-direct {p0, v9}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 121
    iget-object v9, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    # getter for: Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v7, v7, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->resourceId:I

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v7

    .line 124
    :try_start_2
    invoke-direct {p0, v7, v8, v4}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :try_start_3
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0

    .line 126
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    :catch_0
    move-exception v0

    .line 134
    :try_start_5
    const-string/jumbo v1, "cr.base"

    const-string/jumbo v2, "Exception unpacking required pak resources: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    # invokes: Lorg/chromium/base/ResourceExtractor;->deleteFiles()V
    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 138
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 142
    if-eqz v3, :cond_0

    .line 144
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 148
    :catch_1
    move-exception v0

    const-string/jumbo v0, "cr.base"

    const-string/jumbo v2, "Failed to write resource pak timestamp!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 138
    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method

.method private endTraceSection()V
    .locals 2

    .prologue
    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0
.end method

.method private extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    .locals 6

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 68
    :try_start_1
    const-string/jumbo v0, "cr.base"

    const-string/jumbo v2, "Extracting resource %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    const/4 v0, 0x0

    const/16 v2, 0x4000

    invoke-virtual {p1, p3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    :goto_1
    if-eqz p1, :cond_0

    .line 83
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    .line 74
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 78
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " extracted with 0 length!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :cond_3
    if-eqz p1, :cond_4

    .line 83
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 91
    return-void

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 86
    :catchall_2
    move-exception v0

    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v0

    .line 81
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private onPostExecuteImpl()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackgroundImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 177
    const-string/jumbo v0, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 179
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecuteImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method
