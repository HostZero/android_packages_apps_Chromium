.class public Lorg/chromium/components/variations/firstrun/VariationsSeedService;
.super Landroid/app/IntentService;
.source "VariationsSeedService.java"


# static fields
.field private static sFetchInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->sFetchInProgress:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "VariationsSeedServ"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 120
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private downloadContent(Ljava/net/URL;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    const/4 v7, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 66
    const/16 v1, 0x2710

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    const/16 v1, 0x3a98

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 69
    const-string/jumbo v1, "A-IM"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v7, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 72
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 73
    const-string/jumbo v2, "VariationsSeedServ"

    const-string/jumbo v3, "Non-OK response code = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v7, :cond_0

    .line 91
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v1, v8

    :goto_0
    return v1

    .line 78
    :cond_1
    :try_start_1
    invoke-direct {p0, v7}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getRawSeed(Ljava/net/HttpURLConnection;)[B

    move-result-object v2

    .line 79
    const-string/jumbo v1, "X-Seed-Signature"

    invoke-direct {p0, v7, v1}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getHeaderFieldOrEmpty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string/jumbo v1, "X-Country"

    invoke-direct {p0, v7, v1}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getHeaderFieldOrEmpty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string/jumbo v1, "Date"

    invoke-direct {p0, v7, v1}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getHeaderFieldOrEmpty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    const-string/jumbo v1, "IM"

    invoke-direct {p0, v7, v1}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getHeaderFieldOrEmpty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "gzip"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 83
    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->setVariationsFirstRunSeed(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz v7, :cond_2

    .line 91
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v1, v9

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    :try_start_2
    const-string/jumbo v2, "VariationsSeedServ"

    const-string/jumbo v3, "IOException fetching first run seed: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz v7, :cond_3

    .line 91
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v1, v8

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 91
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v1
.end method

.method private getHeaderFieldOrEmpty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, ""

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRawSeed(Ljava/net/HttpURLConnection;)[B
    .locals 2

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 108
    invoke-direct {p0, v1}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method

.method private static setFetchInProgressFlagValue(Z)V
    .locals 0

    .prologue
    .line 59
    sput-boolean p0, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->sFetchInProgress:Z

    .line 60
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 42
    sget-boolean v0, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->sFetchInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->hasJavaPref(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->hasNativePref(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {v1}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->setFetchInProgressFlagValue(Z)V

    .line 48
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "https://clients4.google.com/chrome-variations/seed?osname=android"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->downloadContent(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v5}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->setFetchInProgressFlagValue(Z)V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_1
    const-string/jumbo v1, "VariationsSeedServ"

    const-string/jumbo v2, "Variations server URL is malformed."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {v5}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->setFetchInProgressFlagValue(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lorg/chromium/components/variations/firstrun/VariationsSeedService;->setFetchInProgressFlagValue(Z)V

    throw v0
.end method
