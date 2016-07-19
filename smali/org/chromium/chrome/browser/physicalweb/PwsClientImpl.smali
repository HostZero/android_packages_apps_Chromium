.class Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;
.super Ljava/lang/Object;
.source "PwsClientImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/physicalweb/PwsClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;->parseResolveScanResponse(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static createResolveScanPayload(Ljava/util/Collection;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 44
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string/jumbo v2, "urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    return-object v0
.end method

.method private getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isStableBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, "AIzaSyBOti4mM-6x9WDnZIjIeyEU21OpBXqWBgw"

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "AIzaSyDlwuGjJ5WJUJ1ulxR1gYIRGe8t2nIVZJU"

    goto :goto_0
.end method

.method private static parseResolveScanResponse(Lorg/json/JSONObject;)Ljava/util/Collection;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 59
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const-string/jumbo v0, "results"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 61
    if-nez v9, :cond_0

    move-object v0, v8

    .line 82
    :goto_0
    return-object v0

    :cond_0
    move v6, v7

    .line 67
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "pageInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 71
    const-string/jumbo v1, "scannedUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "resolvedUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string/jumbo v0, "icon"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string/jumbo v0, "title"

    const-string/jumbo v4, ""

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string/jumbo v0, "description"

    const-string/jumbo v10, ""

    invoke-virtual {v5, v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/physicalweb/PwsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v1, "PhysicalWeb"

    const-string/jumbo v2, "PWS returned invalid data"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object v0, v8

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public fetchIcon(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;)V
    .locals 5

    .prologue
    .line 141
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$2;-><init>(Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;Ljava/lang/String;)V

    .line 162
    :try_start_0
    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest;

    invoke-direct {v1, p1, v0}, Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest;-><init>(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/BitmapHttpRequest$RequestCallback;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string/jumbo v1, "PhysicalWeb"

    const-string/jumbo v2, "Error creating icon request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public resolve(Ljava/util/Collection;Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;

    invoke-direct {v0, p0, p2}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;)V

    .line 118
    :try_start_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;->createResolveScanPayload(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://physicalweb.googleapis.com/v1alpha1/urls:resolve?key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v3, Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;

    invoke-direct {v3, v2, v1, v0}, Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/chromium/chrome/browser/physicalweb/JsonObjectHttpRequest$RequestCallback;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string/jumbo v1, "PhysicalWeb"

    const-string/jumbo v2, "Error creating PWS HTTP request"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string/jumbo v1, "PhysicalWeb"

    const-string/jumbo v2, "Error creating PWS JSON payload"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
