.class public Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;
.super Ljava/lang/Object;
.source "PhysicalWeb.java"


# static fields
.field public static final OPTIN_NOTIFY_MAX_TRIES:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearUrlsAsync(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb$1;-><init>(Landroid/content/Context;)V

    .line 133
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public static featureIsEnabled()Z
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "PhysicalWeb"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOptInNotifyCount(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "physical_web_notify_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isOnboarding(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isPhysicalWebOnboarding()Z

    move-result v0

    return v0
.end method

.method public static isPhysicalWebPreferenceEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isPhysicalWebEnabled()Z

    move-result v0

    return v0
.end method

.method public static recordOptInNotification(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "physical_web_notify_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "physical_web_notify_count"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public static shouldStartOnLaunch(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->featureIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isPhysicalWebPreferenceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isOnboarding(Landroid/content/Context;)Z

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

.method public static startPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->getInstance(Lorg/chromium/chrome/browser/ChromeApplication;)Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->backgroundSubscribe()V

    .line 77
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->clearUrlsAsync(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public static stopPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->getInstance(Lorg/chromium/chrome/browser/ChromeApplication;)Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->backgroundUnsubscribe()V

    .line 88
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->clearUrlsAsync(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public static uploadDeferredMetrics(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->uploadDeferredMetrics(Landroid/content/Context;)V

    .line 98
    return-void
.end method
