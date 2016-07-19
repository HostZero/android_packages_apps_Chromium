.class Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;
.super Ljava/lang/Object;
.source "LocationProviderFactory.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRunning:Z

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/chromium/content/browser/LocationProviderFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->updateNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method private ensureLocationManagerCreated()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 133
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v0, "cr.LocationProvider"

    const-string/jumbo v1, "Could not get location manager."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isOnlyPassiveLocationProviderEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "passive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private registerForLocationUpdates(Z)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->ensureLocationManagerCreated()V

    .line 143
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->usePassiveOneShotLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-boolean v0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mIsRunning:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_2
    iput-boolean v1, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mIsRunning:Z

    .line 151
    :try_start_0
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 152
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 153
    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    const-string/jumbo v0, "cr.LocationProvider"

    const-string/jumbo v1, "Caught security exception while registering for location updates from the system. The application does not have sufficient geolocation permissions."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->unregisterFromLocationUpdates()V

    .line 162
    const-string/jumbo v0, "application does not have sufficient geolocation permissions."

    invoke-static {v0}, Lorg/chromium/content/browser/LocationProviderAdapter;->newErrorAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    const-string/jumbo v0, "cr.LocationProvider"

    const-string/jumbo v1, "Caught IllegalArgumentException registering for location updates."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->unregisterFromLocationUpdates()V

    .line 167
    sget-boolean v0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private unregisterFromLocationUpdates()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mIsRunning:Z

    .line 177
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method private updateNewLocation(Landroid/location/Location;)V
    .locals 20

    .prologue
    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v15

    float-to-double v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v2 .. v19}, Lorg/chromium/content/browser/LocationProviderAdapter;->newLocationAvailable(DDDZDZDZDZD)V

    .line 115
    return-void
.end method

.method private usePassiveOneShotLocation()Z
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->isOnlyPassiveLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    .line 190
    new-instance v1, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl$1;-><init>(Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;Landroid/location/Location;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->updateNewLocation(Landroid/location/Location;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public start(Z)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->unregisterFromLocationUpdates()V

    .line 78
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->registerForLocationUpdates(Z)V

    .line 79
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProviderImpl;->unregisterFromLocationUpdates()V

    .line 87
    return-void
.end method
