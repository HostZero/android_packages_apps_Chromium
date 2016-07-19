.class public final Lcom/google/ipc/invalidation/ticl/android2/f;
.super Ljava/lang/Object;
.source "AndroidStorage.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/f;->a:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public final deleteKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "ClientToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "ticl_storage.bin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "ticl_storage.bin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final readAllKeys(Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "ticl_storage.bin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->SUCCESS:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "ClientToken"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 158
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public final readKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 91
    const-string/jumbo v0, "ClientToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Key unsupported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 93
    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "ticl_storage.bin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 102
    const-wide/16 v6, 0x1000

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 103
    sget-object v0, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "File too big: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 105
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 108
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    long-to-int v3, v4

    new-array v3, v3, [B

    .line 110
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 111
    sget-object v0, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->SUCCESS:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    const-string/jumbo v4, ""

    invoke-static {v0, v4}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 121
    if-eqz v1, :cond_2

    .line 123
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :cond_2
    :goto_1
    invoke-interface {p2, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->TRANSIENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to close file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 128
    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    move-result-object v0

    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 113
    :goto_2
    :try_start_3
    sget-object v3, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "File not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 115
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 121
    if-eqz v1, :cond_2

    .line 123
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 124
    :catch_2
    move-exception v0

    .line 125
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->TRANSIENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to close file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 128
    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    move-result-object v0

    goto :goto_1

    .line 116
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 117
    :goto_3
    :try_start_5
    sget-object v3, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->TRANSIENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "IO exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 119
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 121
    if-eqz v1, :cond_2

    .line 123
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 124
    :catch_4
    move-exception v0

    .line 125
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->TRANSIENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to close file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    .line 128
    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    move-result-object v0

    goto/16 :goto_1

    .line 121
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 123
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 129
    :cond_3
    :goto_5
    throw v0

    .line 124
    :catch_5
    move-exception v1

    .line 125
    sget-object v3, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->TRANSIENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to close file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v1

    .line 128
    invoke-static {v1, v2}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    goto :goto_5

    .line 121
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 116
    :catch_6
    move-exception v0

    goto :goto_3

    .line 112
    :catch_7
    move-exception v0

    goto/16 :goto_2
.end method

.method public final setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final writeKey(Ljava/lang/String;[BLcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 5

    .prologue
    .line 60
    const-string/jumbo v0, "ClientToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Key unsupported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/f;->a:Landroid/content/Context;

    const-string/jumbo v2, "ticl_storage.bin"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    sget-object v0, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->SUCCESS:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 76
    if-eqz v1, :cond_1

    .line 78
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :cond_1
    :goto_1
    invoke-interface {p3, v0}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to close file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    :try_start_2
    sget-object v2, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "File not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 76
    if-eqz v1, :cond_1

    .line 78
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to close file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    goto :goto_1

    .line 73
    :catch_3
    move-exception v0

    .line 74
    :try_start_4
    sget-object v2, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "File not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 76
    if-eqz v1, :cond_1

    .line 78
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 79
    :catch_4
    move-exception v0

    .line 80
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to close file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    move-result-object v0

    goto/16 :goto_1

    .line 76
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 78
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 82
    :cond_2
    :goto_2
    throw v0

    .line 79
    :catch_5
    move-exception v1

    .line 80
    sget-object v2, Lcom/google/ipc/invalidation/external/client/types/Status$Code;->PERMANENT_FAILURE:Lcom/google/ipc/invalidation/external/client/types/Status$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to close file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/ipc/invalidation/external/client/types/Status;->newInstance(Lcom/google/ipc/invalidation/external/client/types/Status$Code;Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/Status;

    goto :goto_2
.end method
