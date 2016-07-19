.class public Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;
.super Ljava/lang/Object;
.source "WebappAuthenticator.java"


# static fields
.field private static sKey:Ljavax/crypto/SecretKey;

.field private static final sLock:Ljava/lang/Object;

.field private static sMacKeyGenerator:Ljava/util/concurrent/FutureTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constantTimeAreArraysEqual([B[B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    .line 98
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 99
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_2
    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-object v2, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_2

    .line 170
    const-string/jumbo v0, "webapp-authenticator"

    const-string/jumbo v3, "HmacSHA256"

    invoke-static {p0, v0, v3}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->readKeyFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 173
    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    monitor-exit v2

    .line 191
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->triggerMacKeyGeneration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sMacKeyGenerator:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sMacKeyGenerator:Ljava/util/concurrent/FutureTask;

    .line 180
    const-string/jumbo v0, "webapp-authenticator"

    sget-object v3, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    invoke-static {p0, v0, v3}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->writeKeyToFile(Landroid/content/Context;Ljava/lang/String;Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 184
    :cond_1
    :try_start_3
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 187
    :catch_1
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 191
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private static getMac(Landroid/content/Context;)Ljavax/crypto/Mac;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 226
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->getKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 227
    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string/jumbo v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 235
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    const-string/jumbo v2, "WebappAuthenticator"

    const-string/jumbo v3, "Error in creating MAC instance"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMacForUrl(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->getMac(Landroid/content/Context;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static isUrlValid(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 64
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 65
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->getMacForUrl(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->recordWebappHistogramTimes(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 70
    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 68
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 73
    :cond_0
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->constantTimeAreArraysEqual([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method private static readKeyFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v0, 0x0

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 109
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 110
    const-string/jumbo v1, "WebappAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not read key from \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\': invalid file contents"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    const/16 v1, 0x20

    new-array v4, v1, [B

    .line 115
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eq v8, v1, :cond_2

    .line 131
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key input stream \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    :try_start_3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v4, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    move-object v0, v1

    .line 135
    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key input stream \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    .line 131
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 133
    :catch_3
    move-exception v1

    .line 134
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key input stream \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :catch_4
    move-exception v1

    move-object v2, v0

    .line 126
    :goto_2
    :try_start_6
    const-string/jumbo v4, "WebappAuthenticator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not read key from \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 130
    if-eqz v2, :cond_0

    .line 131
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 133
    :catch_5
    move-exception v1

    .line 134
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key input stream \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 130
    :goto_3
    if-eqz v2, :cond_3

    .line 131
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 135
    :cond_3
    :goto_4
    throw v0

    .line 133
    :catch_6
    move-exception v1

    .line 134
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key input stream \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 129
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 125
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method private static triggerMacKeyGeneration()V
    .locals 3

    .prologue
    .line 199
    sget-object v1, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sMacKeyGenerator:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    monitor-exit v1

    .line 218
    :goto_0
    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator$1;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sMacKeyGenerator:Ljava/util/concurrent/FutureTask;

    .line 217
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v2, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator;->sMacKeyGenerator:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 218
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static writeKeyToFile(Landroid/content/Context;Ljava/lang/String;Ljavax/crypto/SecretKey;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 141
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 142
    const/4 v3, 0x0

    .line 143
    const/16 v2, 0x20

    array-length v5, v1

    if-eq v2, v5, :cond_1

    .line 144
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeKeyToFile got key encoded bytes length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; expected 32"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string/jumbo v1, "WebappAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not close key output stream \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 154
    :goto_2
    :try_start_3
    const-string/jumbo v3, "WebappAuthenticator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not write key to \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    if-eqz v2, :cond_0

    .line 159
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 161
    :catch_2
    move-exception v1

    .line 162
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key output stream \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 158
    :goto_3
    if-eqz v2, :cond_2

    .line 159
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    :cond_2
    :goto_4
    throw v0

    .line 161
    :catch_3
    move-exception v1

    .line 162
    const-string/jumbo v2, "WebappAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close key output stream \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 157
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 153
    :catch_4
    move-exception v1

    goto :goto_2
.end method
