.class Lorg/chromium/content/browser/MediaResourceGetter;
.super Ljava/lang/Object;
.source "MediaResourceGetter.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;


# instance fields
.field private final mRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V

    sput-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 41
    return-void
.end method

.method private canonicalize(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v2, "canonicalization of file path failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 376
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 371
    goto :goto_1
.end method

.method private doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 147
    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v1, "missing duration metadata"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    :goto_0
    return-object v0

    .line 156
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 164
    :try_start_2
    const-string/jumbo v0, "yes"

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-nez v0, :cond_1

    .line 171
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v1, "missing video width metadata"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    const-string/jumbo v1, "cr_MediaResource"

    const-string/jumbo v3, "non-numeric duration: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 175
    :cond_1
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    .line 181
    const/16 v0, 0x13

    :try_start_4
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-nez v0, :cond_2

    .line 184
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v1, "missing video height metadata"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    const-string/jumbo v1, "cr_MediaResource"

    const-string/jumbo v3, "non-numeric width: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 188
    :cond_2
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    move v3, v1

    move v1, v0

    .line 194
    :goto_1
    :try_start_6
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v3, v1, v5}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 197
    :catch_2
    move-exception v0

    .line 198
    const-string/jumbo v1, "cr_MediaResource"

    const-string/jumbo v3, "Unable to extract metadata: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto/16 :goto_0

    .line 190
    :catch_3
    move-exception v1

    :try_start_7
    const-string/jumbo v1, "cr_MediaResource"

    const-string/jumbo v3, "non-numeric height: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :cond_3
    move v1, v2

    move v3, v2

    goto :goto_1
.end method

.method private static extractMediaMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaResourceGetter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/content/browser/MediaResourceGetter;->extract(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static extractMediaMetadataFromFd(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 7

    .prologue
    .line 126
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaResourceGetter;-><init>()V

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/MediaResourceGetter;->extract(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private getRawAcceptableDirectories(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    const-string/jumbo v1, "/mnt/sdcard/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    const-string/jumbo v1, "/sdcard/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-object v0
.end method

.method private isLoopbackAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 298
    if-eqz p1, :cond_1

    const-string/jumbo v0, "localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "127.0.0.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "[::1]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method configure(IJJ)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 386
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 388
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    const-string/jumbo v1, "cr_MediaResource"

    const-string/jumbo v2, "Failed to close file descriptor: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    .line 392
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 395
    :goto_1
    throw v0

    .line 393
    :catch_1
    move-exception v1

    .line 394
    const-string/jumbo v2, "cr_MediaResource"

    const-string/jumbo v3, "Failed to close file descriptor: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method configure(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 412
    return-void
.end method

.method configure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method configure(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 402
    return-void
.end method

.method configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 213
    if-eqz v3, :cond_0

    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v2, "File does not exist."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 261
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    const-string/jumbo v3, "cr_MediaResource"

    const-string/jumbo v4, "Cannot parse uri: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 210
    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, v2, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->filePathAcceptable(Ljava/io/File;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v2, "Refusing to read from unsafe file location."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v2

    .line 227
    const-string/jumbo v3, "cr_MediaResource"

    const-string/jumbo v4, "Error configuring data source: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_3
    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 235
    :catch_2
    move-exception v2

    .line 236
    const-string/jumbo v3, "cr_MediaResource"

    const-string/jumbo v4, "Error configuring data source: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 237
    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 242
    goto :goto_0

    .line 244
    :cond_5
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->isLoopbackAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->isNetworkReliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 246
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v2, "non-file URI can\'t be read due to unsuitable network conditions"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 251
    const-string/jumbo v3, "Cookie"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 254
    const-string/jumbo v3, "User-Agent"

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_8
    :try_start_3
    invoke-virtual {p0, p2, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 259
    :catch_3
    move-exception v2

    .line 260
    const-string/jumbo v3, "cr_MediaResource"

    const-string/jumbo v4, "Error configuring data source: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 261
    goto/16 :goto_0
.end method

.method extract(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 2

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p5}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(IJJ)V

    .line 132
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method extract(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v1, "Unable to configure metadata extractor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method extractMetadata(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method filePathAcceptable(Ljava/io/File;Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 322
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/MediaResourceGetter;->getRawAcceptableDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/MediaResourceGetter;->canonicalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    .line 315
    :catch_0
    move-exception v0

    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v2, "canonicalization of file path failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 316
    goto :goto_0

    :cond_1
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method getExternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lorg/chromium/base/PathUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNetworkType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 342
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 344
    if-nez v0, :cond_0

    .line 345
    const-string/jumbo v0, "cr_MediaResource"

    const-string/jumbo v2, "no connectivity manager available"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 353
    :goto_0
    return-object v0

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 349
    if-nez v0, :cond_1

    move-object v0, v1

    .line 351
    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method isNetworkReliable(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 272
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const-string/jumbo v1, "cr_MediaResource"

    const-string/jumbo v2, "permission denied to access network state"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->getNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 286
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method uriToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
