.class Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;
.super Ljava/lang/Object;
.source "GeolocationTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mLocationManager:Landroid/location/LocationManager;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener$1;-><init>(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mCancelRunnable:Ljava/lang/Runnable;

    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    const/4 v0, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->access$102(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    .line 58
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
