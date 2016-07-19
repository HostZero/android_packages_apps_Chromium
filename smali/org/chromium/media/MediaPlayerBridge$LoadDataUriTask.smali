.class Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;
.super Landroid/os/AsyncTask;
.source "MediaPlayerBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/lang/String;

.field private mTempFile:Ljava/io/File;

.field final synthetic this$0:Lorg/chromium/media/MediaPlayerBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    const-class v0, Lorg/chromium/media/MediaPlayerBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/media/MediaPlayerBridge;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 241
    iput-object p3, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mData:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mContext:Landroid/content/Context;

    .line 243
    return-void
.end method

.method private deleteFile()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const-string/jumbo v0, "cr.media"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to delete temporary file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    sget-boolean v0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    :try_start_0
    const-string/jumbo v1, "decoded"

    const-string/jumbo v2, "mediadata"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    .line 250
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 252
    new-instance v2, Landroid/util/Base64InputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 253
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 255
    :goto_0
    invoke-virtual {v2, v0}, Landroid/util/Base64InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 256
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 264
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 267
    :cond_0
    :goto_2
    return-object v0

    .line 258
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/util/Base64InputStream;->close()V

    .line 259
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 264
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 263
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 264
    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 267
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 263
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 261
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->deleteFile()V

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    invoke-virtual {v0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_1
    invoke-direct {p0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->deleteFile()V

    .line 285
    sget-boolean v0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    # getter for: Lorg/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/media/MediaPlayerBridge;->access$000(Lorg/chromium/media/MediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 286
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    # getter for: Lorg/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/media/MediaPlayerBridge;->access$000(Lorg/chromium/media/MediaPlayerBridge;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lorg/chromium/media/MediaPlayerBridge;->nativeOnDidSetDataUriDataSource(JZ)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/media/MediaPlayerBridge;->access$100(Lorg/chromium/media/MediaPlayerBridge;JZ)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
