.class Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener$1;
.super Ljava/lang/Object;
.source "GeolocationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener$1;->this$0:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener$1;->this$0:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    # getter for: Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;->access$000(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener$1;->this$0:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 48
    const/4 v0, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->sListener:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker;->access$102(Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;)Lorg/chromium/chrome/browser/omnibox/geo/GeolocationTracker$SelfCancelingListener;

    .line 49
    return-void
.end method
