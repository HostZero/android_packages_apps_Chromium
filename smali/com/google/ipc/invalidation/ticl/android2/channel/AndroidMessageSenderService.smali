.class public Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;
.super Landroid/app/IntentService;
.source "AndroidMessageSenderService.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "AndroidNetworkService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "MsgSenderSvc"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->setIntentRedelivery(Z)V

    .line 79
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)Lcom/google/ipc/invalidation/ticl/a/D;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 392
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 393
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 394
    const-string/jumbo v1, "ANDROID_GCM_UPDATED"

    .line 407
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    :cond_0
    const-string/jumbo v1, "No GCM registration id; cannot determine our network endpoint id: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-interface {p1, v1, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :goto_1
    return-object v0

    .line 397
    :cond_1
    const-string/jumbo v1, ""

    .line 399
    :try_start_0
    invoke-static {p0}, Lcom/google/android/a/c;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 400
    :catch_0
    move-exception v2

    .line 403
    const-string/jumbo v3, "Unable to get GCM registration id: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-interface {p1, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    .line 404
    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/channel/a;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v1, v0, v3}, Landroid/support/customtabs/a;->newAndroidEndpointId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/ar;)Lcom/google/ipc/invalidation/ticl/a/D;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 371
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 373
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 346
    :try_start_0
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 351
    if-eqz p3, :cond_1

    .line 352
    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/x-protobuffer"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_0

    .line 363
    const-string/jumbo v2, "echo-token"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    return-object v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot set request method to POST"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 354
    :cond_1
    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GoogleLogin auth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([BLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_MSG"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 156
    const-string/jumbo v4, "com.google.ipc.invalidation.AUTH_TOKEN_IS_RETRY"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v0, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.google.ipc.invalidation.AUTH_TOKEN_REQUEST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v4, "com.google.ipc.invalidation.AUTH_TOKEN_PENDING_INTENT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    if-eqz p2, :cond_0

    .line 167
    const-string/jumbo v0, "com.google.ipc.invalidaton.AUTH_TOKEN_INVALIDATE"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/g;

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/ipc/invalidation/ticl/android2/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 156
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "unable to request auth token: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a([BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 217
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)Lcom/google/ipc/invalidation/ticl/a/D;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Buffering message to the data center: no GCM registration id"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-static {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->a(Landroid/content/Context;[B)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Delivering outbound message: %s bytes"

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :try_start_0
    const-string/jumbo v2, "oauth2:"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 231
    if-eqz v3, :cond_2

    move-object p3, v1

    .line 1308
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1312
    const-string/jumbo v2, "https://clients4.google.com/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    const-string/jumbo v2, "/invalidation/android/request/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/D;->a()[B

    move-result-object v0

    .line 1381
    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    if-eqz p3, :cond_3

    .line 1323
    const/16 v0, 0x3f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1324
    const-string/jumbo v0, "service"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    invoke-static {p0, v2, p2, v3}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 237
    const-string/jumbo v0, "Connection"

    const-string/jumbo v3, "close"

    invoke-virtual {v1, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 239
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 242
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 252
    sparse-switch v3, :sswitch_data_0

    .line 266
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v5, "Unexpected response code %s for HTTP POST to %s; response = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_4
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 257
    :sswitch_1
    if-nez p4, :cond_4

    .line 262
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    :try_start_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Malformed URL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 271
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 272
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "IOException sending message (%s): %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 280
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 273
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 277
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "RuntimeException creating HTTP connection or sending message (%s): %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 280
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 273
    :catch_3
    move-exception v0

    goto :goto_3

    .line 271
    :catch_4
    move-exception v0

    goto :goto_2

    .line 252
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcc -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 87
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v0, "ipcinv-outbound-message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string/jumbo v0, "ipcinv-outbound-message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1119
    :try_start_0
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/h;->a([B)Lcom/google/ipc/invalidation/ticl/a/h;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1126
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/h;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    .line 1127
    invoke-direct {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;)V

    goto :goto_0

    .line 1120
    :catch_0
    move-exception v1

    .line 1121
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Invalid AndroidNetworkSendRequest from %s: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1185
    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_MSG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_IS_RETRY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "auth-token-response intent missing fields: %s, %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1193
    :cond_4
    const-string/jumbo v0, "com.google.ipc.invalidation.AUTH_TOKEN_IS_RETRY"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1195
    const-string/jumbo v1, "com.google.ipc.invalidation.AUTH_TOKEN_MSG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "com.google.ipc.invalidation.AUTH_TOKEN"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.google.ipc.invalidation.AUTH_TOKEN_TYPE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 103
    :cond_5
    const-string/jumbo v0, "com.google.ipc.invalidation.channel.sender.gcm_regid_change"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1292
    invoke-static {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/b;->b(Landroid/content/Context;)[B

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_0

    .line 1295
    invoke-direct {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Ignoring intent: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
