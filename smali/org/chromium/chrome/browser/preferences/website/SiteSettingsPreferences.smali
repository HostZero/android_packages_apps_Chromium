.class public Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;
.super Landroid/preference/PreferenceFragment;
.source "SiteSettingsPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final ALL_SITES_KEY:Ljava/lang/String; = "all_sites"

.field static final BLOCK_POPUPS_KEY:Ljava/lang/String; = "block_popups"

.field static final CAMERA_KEY:Ljava/lang/String; = "camera"

.field static final COOKIES_KEY:Ljava/lang/String; = "cookies"

.field static final FULLSCREEN_KEY:Ljava/lang/String; = "fullscreen"

.field static final JAVASCRIPT_KEY:Ljava/lang/String; = "javascript"

.field static final LOCATION_KEY:Ljava/lang/String; = "device_location"

.field static final MICROPHONE_KEY:Ljava/lang/String; = "microphone"

.field static final NOTIFICATIONS_KEY:Ljava/lang/String; = "notifications"

.field static final POPUPS_KEY:Ljava/lang/String; = "popups"

.field static final PROTECTED_CONTENT_KEY:Ljava/lang/String; = "protected_content"

.field static final STORAGE_KEY:Ljava/lang/String; = "use_storage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private keyToContentSettingsType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/16 v0, 0xc

    .line 76
    :goto_0
    return v0

    .line 59
    :cond_0
    const-string/jumbo v0, "cookies"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v0, "fullscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const/16 v0, 0x8

    goto :goto_0

    .line 63
    :cond_2
    const-string/jumbo v0, "device_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x5

    goto :goto_0

    .line 65
    :cond_3
    const-string/jumbo v0, "microphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    const/16 v0, 0xb

    goto :goto_0

    .line 67
    :cond_4
    const-string/jumbo v0, "javascript"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    const/4 v0, 0x2

    goto :goto_0

    .line 69
    :cond_5
    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    const/4 v0, 0x6

    goto :goto_0

    .line 71
    :cond_6
    const-string/jumbo v0, "popups"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    const/4 v0, 0x4

    goto :goto_0

    .line 73
    :cond_7
    const-string/jumbo v0, "protected_content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    const/16 v0, 0x13

    goto :goto_0

    .line 76
    :cond_8
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updatePreferenceStates()V
    .locals 7

    .prologue
    .line 80
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    const-string/jumbo v1, "device_location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    .line 86
    const-string/jumbo v1, "protected_content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    const-string/jumbo v1, "cookies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string/jumbo v1, "camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string/jumbo v1, "fullscreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string/jumbo v1, "javascript"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string/jumbo v1, "microphone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v1, "notifications"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v1, "popups"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 99
    const/4 v1, 0x0

    .line 100
    const-string/jumbo v5, "device_location"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->areAllLocationSettingsEnabled()Z

    move-result v1

    .line 119
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->keyToContentSettingsType(Ljava/lang/String;)I

    move-result v5

    .line 120
    invoke-static {v5}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getTitle(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 121
    const-string/jumbo v6, "cookies"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isBlockThirdPartyCookiesEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 123
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getCookieAllowedExceptThirdPartySummary()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 130
    :goto_2
    invoke-static {v5}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getIcon(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 131
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 102
    :cond_2
    const-string/jumbo v5, "camera"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isCameraEnabled()Z

    move-result v1

    goto :goto_1

    .line 104
    :cond_3
    const-string/jumbo v5, "javascript"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->javaScriptEnabled()Z

    move-result v1

    goto :goto_1

    .line 106
    :cond_4
    const-string/jumbo v5, "microphone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isMicEnabled()Z

    move-result v1

    goto :goto_1

    .line 108
    :cond_5
    const-string/jumbo v5, "protected_content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isProtectedMediaIdentifierEnabled()Z

    move-result v1

    goto :goto_1

    .line 110
    :cond_6
    const-string/jumbo v5, "cookies"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 111
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAcceptCookiesEnabled()Z

    move-result v1

    goto/16 :goto_1

    .line 112
    :cond_7
    const-string/jumbo v5, "notifications"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 113
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isNotificationsEnabled()Z

    move-result v1

    goto/16 :goto_1

    .line 114
    :cond_8
    const-string/jumbo v5, "popups"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 115
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->popupsEnabled()Z

    move-result v1

    goto/16 :goto_1

    .line 116
    :cond_9
    const-string/jumbo v5, "fullscreen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFullscreenAllowed()Z

    move-result v1

    goto/16 :goto_1

    .line 124
    :cond_a
    const-string/jumbo v6, "device_location"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isLocationAllowedByPolicy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 126
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getGeolocationAllowedSummary()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 128
    :cond_b
    invoke-static {v5, v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getCategorySummary(IZ)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 134
    :cond_c
    const-string/jumbo v0, "all_sites"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    const-string/jumbo v0, "use_storage"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lorg/chromium/chrome/R$xml;->site_settings_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_site_settings:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "protected_content"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 53
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->updatePreferenceStates()V

    .line 54
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "category"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->updatePreferenceStates()V

    .line 145
    return-void
.end method
