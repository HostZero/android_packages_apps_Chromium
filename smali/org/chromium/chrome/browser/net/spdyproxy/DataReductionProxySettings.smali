.class public Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;
.super Ljava/lang/Object;
.source "DataReductionProxySettings.java"


# static fields
.field public static final DATA_REDUCTION_PROXY_ENABLED_KEY:Ljava/lang/String; = "Data Reduction Proxy Enabled"

.field private static sSettings:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;


# instance fields
.field private final mNativeDataReductionProxySettings:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    .line 126
    return-void
.end method

.method private areLoFiPreviewsEnabled()Z
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeAreLoFiPreviewsEnabled(J)Z

    move-result v0

    return v0
.end method

.method private extractUrlFromWebliteQueryParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "googleweblight.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "lite_url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 113
    sget-object v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->sSettings:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->sSettings:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    .line 116
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->sSettings:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    return-object v0
.end method

.method public static isEnabledBeforeNativeLoad(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "BANDWIDTH_REDUCTION_PROXY_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private native nativeAreLoFiPreviewsEnabled(J)Z
.end method

.method private native nativeCanUseDataReductionProxy(JLjava/lang/String;)Z
.end method

.method private native nativeGetContentLengths(J)Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;
.end method

.method private native nativeGetDailyOriginalContentLengths(J)[J
.end method

.method private native nativeGetDailyReceivedContentLengths(J)[J
.end method

.method private native nativeGetDataReductionLastUpdateTime(J)J
.end method

.method private native nativeGetHttpProxyList(J)Ljava/lang/String;
.end method

.method private native nativeGetHttpsProxyList(J)Ljava/lang/String;
.end method

.method private native nativeGetLastBypassEvent(J)Ljava/lang/String;
.end method

.method private native nativeIncrementLoFiSnackbarShown(J)V
.end method

.method private native nativeIncrementLoFiUserRequestsForImages(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeIsDataReductionProxyAllowed(J)Z
.end method

.method private native nativeIsDataReductionProxyEnabled(J)Z
.end method

.method private native nativeIsDataReductionProxyManaged(J)Z
.end method

.method private native nativeIsDataReductionProxyPromoAllowed(J)Z
.end method

.method private native nativeIsDataReductionProxyUnreachable(J)Z
.end method

.method private native nativeIsIncludedInAltFieldTrial(J)Z
.end method

.method private native nativeSetDataReductionProxyEnabled(JZ)V
.end method

.method private native nativeSetLoFiLoadImageRequested(J)V
.end method

.method private native nativeWasLoFiLoadImageRequestedBefore(J)Z
.end method

.method private native nativeWasLoFiModeActiveOnMainFrame(J)Z
.end method

.method public static reconcileDataReductionProxyEnabledState(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 101
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "BANDWIDTH_REDUCTION_PROXY_ENABLED"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void
.end method


# virtual methods
.method public canUseDataReductionProxy(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeCanUseDataReductionProxy(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContentLengthPercentSavings()Ljava/lang/String;
    .locals 8

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getContentLengths()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;

    move-result-object v2

    .line 259
    const-wide/16 v0, 0x0

    .line 260
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->getOriginal()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->getOriginal()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->getReceived()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 261
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->getOriginal()J

    move-result-wide v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->getReceived()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->getOriginal()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 263
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLengths()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetContentLengths(J)Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;

    move-result-object v0

    return-object v0
.end method

.method public getDataReductionLastUpdateTime()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetDataReductionLastUpdateTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalNetworkStatsHistory()[J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetDailyOriginalContentLengths(J)[J

    move-result-object v0

    return-object v0
.end method

.method public getReceivedNetworkStatsHistory()[J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetDailyReceivedContentLengths(J)[J

    move-result-object v0

    return-object v0
.end method

.method public incrementLoFiSnackbarShown()V
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIncrementLoFiSnackbarShown(J)V

    .line 195
    return-void
.end method

.method public incrementLoFiUserRequestsForImages()V
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIncrementLoFiUserRequestsForImages(J)V

    .line 204
    return-void
.end method

.method public isDataReductionProxyAllowed()Z
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIsDataReductionProxyAllowed(J)Z

    move-result v0

    return v0
.end method

.method public isDataReductionProxyEnabled()Z
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIsDataReductionProxyEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isDataReductionProxyManaged()Z
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIsDataReductionProxyManaged(J)Z

    move-result v0

    return v0
.end method

.method public isDataReductionProxyPromoAllowed()Z
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIsDataReductionProxyPromoAllowed(J)Z

    move-result v0

    return v0
.end method

.method public isDataReductionProxyUnreachable()Z
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIsDataReductionProxyUnreachable(J)Z

    move-result v0

    return v0
.end method

.method public isIncludedInAltFieldTrial()Z
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeIsIncludedInAltFieldTrial(J)Z

    move-result v0

    return v0
.end method

.method public maybeRewriteWebliteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->areLoFiPreviewsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object p1

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->extractUrlFromWebliteQueryParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 299
    goto :goto_0
.end method

.method public setDataReductionProxyEnabled(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 148
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "BANDWIDTH_REDUCTION_PROXY_ENABLED"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1, p2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeSetDataReductionProxyEnabled(JZ)V

    .line 151
    return-void
.end method

.method public setLoFiLoadImageRequested()V
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeSetLoFiLoadImageRequested(J)V

    .line 188
    return-void
.end method

.method public toFeedbackMap()Ljava/util/Map;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string/jumbo v1, "Data Reduction Proxy Enabled"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v1, "Data Reduction Proxy HTTP Proxies"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetHttpProxyList(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "Data Reduction Proxy HTTPS Proxies"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetHttpsProxyList(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v1, "Data Reduction Proxy Last Bypass"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeGetLastBypassEvent(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-object v0
.end method

.method public wasLoFiLoadImageRequestedBefore()Z
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeWasLoFiLoadImageRequestedBefore(J)Z

    move-result v0

    return v0
.end method

.method public wasLoFiModeActiveOnMainFrame()Z
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->mNativeDataReductionProxySettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->nativeWasLoFiModeActiveOnMainFrame(J)Z

    move-result v0

    return v0
.end method
