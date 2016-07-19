.class Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;
.super Ljava/lang/Object;
.source "GeolocationTracker.java"


# static fields
.field private static sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

.field private static sLocationForTesting:Landroid/location/Location;

.field private static sUseLocationForTesting:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    return-object p0
.end method

.method static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 84
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sUseLocationForTesting:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sLocationForTesting:Landroid/location/Location;

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 87
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method static getLocationAge(Landroid/location/Location;)J
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 77
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static refreshLastKnownLocation(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 100
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 104
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->getLocationAge(Landroid/location/Location;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 106
    :cond_2
    const-string/jumbo v1, "network"

    .line 107
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    invoke-direct {v2, v0, v4}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;-><init>(Landroid/location/LocationManager;Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$1;)V

    sput-object v2, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    .line 109
    sget-object v2, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    invoke-virtual {v0, v1, v2, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method static setLocationForTesting(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 116
    sput-object p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sLocationForTesting:Landroid/location/Location;

    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sUseLocationForTesting:Z

    .line 118
    return-void
.end method
