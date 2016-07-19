.class public Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;
.super Ljava/lang/Object;
.source "GeolocationHeader.java"


# static fields
.field public static final UMA_HEADER_SENT:I = 0x4

.field public static final UMA_LOCATION_DISABLED_FOR_CHROME_APP:I = 0x5

.field public static final UMA_LOCATION_DISABLED_FOR_GOOGLE_DOMAIN:I = 0x0

.field public static final UMA_LOCATION_NOT_AVAILABLE:I = 0x2

.field public static final UMA_LOCATION_STALE:I = 0x3

.field public static final UMA_MAX:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeoHeader(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const-wide v6, 0x416312d000000000L    # 1.0E7

    const/4 v0, 0x0

    const/4 v9, 0x2

    .line 112
    invoke-static {p0, p1, p2, v10}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->isGeoHeaderEnabledForUrl(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 118
    if-nez v1, :cond_1

    .line 119
    invoke-static {v9}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->recordHistogram(I)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->getLocationAge(Landroid/location/Location;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 123
    invoke-static {v11}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->recordHistogram(I)V

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->recordHistogram(I)V

    .line 130
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 132
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 134
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 136
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 140
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "role:1 producer:12 timestamp:%d latlng{latitude_e7:%d longitude_e7:%d} radius:%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "X-Geo: a "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static hasGeolocationPermission(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 150
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 151
    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_2

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGeoHeaderEnabledForUrl(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->isGeoHeaderEnabledForUrl(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method private static isGeoHeaderEnabledForUrl(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeIsGoogleSearchUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->hasGeolocationPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    if-eqz p3, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->recordHistogram(I)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v1, p2}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->isLocationDisabledForUrl(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    if-eqz p3, :cond_0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->recordHistogram(I)V

    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isLocationDisabledForUrl(Landroid/net/Uri;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p1}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne v0, v1, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    invoke-direct {v1, v0, v3, p1}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    .line 189
    :cond_1
    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static primeLocationForGeoHeader(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->hasGeolocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    const-wide/32 v0, 0x493e0

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->refreshLastKnownLocation(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private static recordHistogram(I)V
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v0, "Geolocation.HeaderSentOrNot"

    const/16 v1, 0x8

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 195
    return-void
.end method
