.class public Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;
.super Landroid/app/Service;
.source "CustomTabsConnectionService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->checkIfFirstRunIsNecessary(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 27
    :cond_0
    if-eqz v1, :cond_2

    .line 31
    :cond_1
    :goto_0
    return-object v0

    .line 28
    :cond_2
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCustomTabsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "Service#onBind()"

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "Service#onUnbind()"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Z)V

    .line 39
    const/4 v0, 0x0

    return v0
.end method
