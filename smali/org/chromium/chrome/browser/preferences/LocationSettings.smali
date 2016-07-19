.class public Lorg/chromium/chrome/browser/preferences/LocationSettings;
.super Ljava/lang/Object;
.source "LocationSettings.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/preferences/LocationSettings;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private static canSitesRequestLocationPermission(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isSystemLocationSettingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 49
    sget-object v0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->sInstance:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 52
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createLocationSettings()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->sInstance:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    .line 54
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->sInstance:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    return-object v0
.end method

.method public static setInstanceForTesting(Lorg/chromium/chrome/browser/preferences/LocationSettings;)V
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->sInstance:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    .line 108
    return-void
.end method


# virtual methods
.method public areAllLocationSettingsEnabled()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isChromeLocationSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isSystemLocationSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemLocationSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method public isChromeLocationSettingEnabled()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAllowLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isSystemLocationSettingEnabled()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 92
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
