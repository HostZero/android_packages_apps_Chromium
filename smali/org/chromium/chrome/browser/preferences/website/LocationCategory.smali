.class public Lorg/chromium/chrome/browser/preferences/website/LocationCategory;
.super Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
.source "LocationCategory.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    const-string/jumbo v0, "device_location"

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected enabledGlobally()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isSystemLocationSettingEnabled()Z

    move-result v0

    return v0
.end method

.method protected getIntentToEnableOsGlobalPermission(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LocationCategory;->enabledGlobally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getSystemLocationSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMessageForEnablingOsGlobalPermission(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/LocationCategory;->enabledForChrome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget v1, Lorg/chromium/chrome/R$string;->android_location_off_globally:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget v1, Lorg/chromium/chrome/R$string;->android_location_also_off_globally:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showPermissionBlockedMessage(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/LocationCategory;->enabledForChrome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LocationCategory;->enabledGlobally()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 42
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isChromeLocationSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAllowLocationUserModifiable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
