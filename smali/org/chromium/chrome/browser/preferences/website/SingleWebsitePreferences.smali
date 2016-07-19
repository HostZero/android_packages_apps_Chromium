.class public Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;
.super Landroid/preference/PreferenceFragment;
.source "SingleWebsitePreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "org.chromium.chrome.preferences.location"

.field public static final EXTRA_ORIGIN:Ljava/lang/String; = "org.chromium.chrome.preferences.origin"

.field public static final EXTRA_SITE:Ljava/lang/String; = "org.chromium.chrome.preferences.site"

.field public static final EXTRA_WEB_CONTENTS:Ljava/lang/String; = "org.chromium.chrome.preferences.web_contents"

.field private static final PERMISSION_PREFERENCE_KEYS:[Ljava/lang/String;

.field public static final PREF_CAMERA_CAPTURE_PERMISSION:Ljava/lang/String; = "camera_permission_list"

.field public static final PREF_CLEAR_DATA:Ljava/lang/String; = "clear_data"

.field public static final PREF_COOKIES_PERMISSION:Ljava/lang/String; = "cookies_permission_list"

.field public static final PREF_FULLSCREEN_PERMISSION:Ljava/lang/String; = "fullscreen_permission_list"

.field public static final PREF_JAVASCRIPT_PERMISSION:Ljava/lang/String; = "javascript_permission_list"

.field public static final PREF_KEYGEN_PERMISSION:Ljava/lang/String; = "keygen_permission_list"

.field public static final PREF_LOCATION_ACCESS:Ljava/lang/String; = "location_access_list"

.field public static final PREF_MIC_CAPTURE_PERMISSION:Ljava/lang/String; = "microphone_permission_list"

.field public static final PREF_MIDI_SYSEX_PERMISSION:Ljava/lang/String; = "midi_sysex_permission_list"

.field public static final PREF_NOTIFICATIONS_PERMISSION:Ljava/lang/String; = "push_notifications_list"

.field public static final PREF_OS_PERMISSIONS_WARNING:Ljava/lang/String; = "os_permissions_warning"

.field public static final PREF_OS_PERMISSIONS_WARNING_DIVIDER:Ljava/lang/String; = "os_permissions_warning_divider"

.field public static final PREF_OS_PERMISSIONS_WARNING_EXTRA:Ljava/lang/String; = "os_permissions_warning_extra"

.field public static final PREF_PERMISSIONS:Ljava/lang/String; = "site_permissions"

.field public static final PREF_POPUP_PERMISSION:Ljava/lang/String; = "popup_permission_list"

.field public static final PREF_PROTECTED_MEDIA_IDENTIFIER_PERMISSION:Ljava/lang/String; = "protected_media_identifier_permission_list"

.field public static final PREF_RESET_SITE:Ljava/lang/String; = "reset_site_button"

.field public static final PREF_SITE_TITLE:Ljava/lang/String; = "site_title"

.field public static final PREF_USAGE:Ljava/lang/String; = "site_usage"


# instance fields
.field private mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

.field private mSiteAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->$assertionsDisabled:Z

    .line 87
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "camera_permission_list"

    aput-object v3, v0, v2

    const-string/jumbo v2, "cookies_permission_list"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "fullscreen_permission_list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "javascript_permission_list"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "keygen_permission_list"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "location_access_list"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "microphone_permission_list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "midi_sysex_permission_list"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "push_notifications_list"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "popup_permission_list"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "protected_media_identifier_permission_list"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->PERMISSION_PREFERENCE_KEYS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Lorg/chromium/chrome/browser/preferences/website/Website;)Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSiteAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;Ljava/util/List;)Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mergePermissionInfoForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;Ljava/util/List;)Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->displaySitePermissions()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasUsagePreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->popBackIfNoSettings()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->resetSite()V

    return-void
.end method

.method private clearStoredData()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->clearAllStoredData(Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;)V

    .line 577
    return-void
.end method

.method public static createFragmentArgsForSite(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->formatUrlForSecurityDisplay(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string/jumbo v2, "org.chromium.chrome.preferences.origin"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method private displaySitePermissions()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 283
    sget v0, Lorg/chromium/chrome/R$xml;->single_website_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->addPreferencesFromResource(I)V

    .line 285
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move v1, v2

    .line 286
    :goto_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 287
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 288
    const-string/jumbo v4, "site_title"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    const-string/jumbo v4, "clear_data"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTotalUsage()J

    move-result-wide v4

    .line 292
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 294
    sget v7, Lorg/chromium/chrome/R$string;->origin_settings_storage_usage_brief:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;->setConfirmationListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 301
    :cond_3
    const-string/jumbo v4, "reset_site_button"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 302
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 303
    :cond_4
    const-string/jumbo v4, "camera_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_1

    .line 305
    :cond_5
    const-string/jumbo v4, "cookies_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 306
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCookiePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 307
    :cond_6
    const-string/jumbo v4, "fullscreen_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 308
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getFullscreenPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 310
    :cond_7
    const-string/jumbo v4, "javascript_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 311
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getJavaScriptPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 312
    :cond_8
    const-string/jumbo v4, "keygen_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 313
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getKeygenPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 314
    :cond_9
    const-string/jumbo v4, "location_access_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 315
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpLocationPreference(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 316
    :cond_a
    const-string/jumbo v4, "microphone_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 317
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophonePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 318
    :cond_b
    const-string/jumbo v4, "midi_sysex_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 319
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMidiPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 320
    :cond_c
    const-string/jumbo v4, "push_notifications_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 321
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getNotificationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 322
    :cond_d
    const-string/jumbo v4, "popup_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 323
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getPopupPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 324
    :cond_e
    const-string/jumbo v4, "protected_media_identifier_permission_list"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/website/Website;->getProtectedMediaIdentifierPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_1

    .line 330
    :cond_f
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 331
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getWarningCategory()Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v1

    .line 332
    if-nez v1, :cond_13

    .line 333
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "os_permissions_warning"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "os_permissions_warning_extra"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "os_permissions_warning_divider"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_10
    :goto_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasUsagePreferences()Z

    move-result v1

    if-nez v1, :cond_11

    .line 356
    const-string/jumbo v1, "site_usage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_11
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasPermissionsPreferences()Z

    move-result v1

    if-nez v1, :cond_12

    .line 360
    const-string/jumbo v1, "site_permissions"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_12
    return-void

    .line 340
    :cond_13
    const-string/jumbo v3, "os_permissions_warning"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 341
    const-string/jumbo v4, "os_permissions_warning_extra"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 343
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->configurePermissionIsOffPreferences(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/app/Activity;Z)V

    .line 345
    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_14

    .line 346
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "os_permissions_warning"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 348
    :cond_14
    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_10

    .line 349
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "os_permissions_warning_extra"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private getContentSettingsTypeFromPreferenceKey(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 529
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 553
    :goto_1
    :pswitch_0
    return v0

    .line 529
    :sswitch_0
    const-string/jumbo v6, "camera_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "cookies_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "fullscreen_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "javascript_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "keygen_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "location_access_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "microphone_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "midi_sysex_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "push_notifications_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v6, "popup_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v6, "protected_media_identifier_permission_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    .line 531
    :pswitch_1
    const/16 v0, 0xc

    goto :goto_1

    .line 535
    :pswitch_2
    const/16 v0, 0x8

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    .line 537
    goto/16 :goto_1

    .line 539
    :pswitch_4
    const/16 v0, 0x19

    goto/16 :goto_1

    :pswitch_5
    move v0, v2

    .line 541
    goto/16 :goto_1

    .line 543
    :pswitch_6
    const/16 v0, 0xb

    goto/16 :goto_1

    .line 545
    :pswitch_7
    const/16 v0, 0x10

    goto/16 :goto_1

    :pswitch_8
    move v0, v3

    .line 547
    goto/16 :goto_1

    :pswitch_9
    move v0, v4

    .line 549
    goto/16 :goto_1

    .line 551
    :pswitch_a
    const/16 v0, 0x13

    goto/16 :goto_1

    .line 529
    :sswitch_data_0
    .sparse-switch
        -0x6c2376f1 -> :sswitch_5
        -0x3bac82dc -> :sswitch_a
        -0x3aa878a2 -> :sswitch_1
        -0x32075d26 -> :sswitch_8
        -0x30c35dc4 -> :sswitch_3
        -0x193a1776 -> :sswitch_2
        -0x7b39ea0 -> :sswitch_4
        -0x267e40c -> :sswitch_0
        0x54ff471 -> :sswitch_7
        0x3bba47f9 -> :sswitch_6
        0x6216db7b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getDisabledInChromeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getIcon(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 522
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->primary_text_disabled_material_light:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    .line 524
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 525
    return-object v0
.end method

.method private getWarningCategory()Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    const/4 v1, 0x5

    .line 371
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->showWarningFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromContentSettingsType(I)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->showWarningFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-static {v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromContentSettingsType(I)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->showWarningFor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromContentSettingsType(I)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPermissionsPreferences()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 412
    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->PERMISSION_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 413
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 415
    :cond_0
    return v0

    .line 412
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasUsagePreferences()Z
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "clear_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasXGeoLocationPermission(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    const-string/jumbo v2, "foo"

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->isGeoHeaderEnabledForUrl(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static mergePermissionInfoForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;Ljava/util/List;)Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 8

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v3, Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/preferences/website/Website;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 205
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCookieInfo()Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCookieInfo()Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCookieInfo()Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCookieInfo()Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setCookieInfo(Lorg/chromium/chrome/browser/preferences/website/CookieInfo;)V

    .line 209
    :cond_2
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getFullscreenInfo()Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getFullscreenInfo()Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getFullscreenInfo()Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 211
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getFullscreenInfo()Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setFullscreenInfo(Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;)V

    .line 213
    :cond_3
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationInfo()Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationInfo()Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationInfo()Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationInfo()Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setGeolocationInfo(Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;)V

    .line 217
    :cond_4
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getKeygenInfo()Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getKeygenInfo()Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getKeygenInfo()Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getKeygenInfo()Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setKeygenInfo(Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;)V

    .line 221
    :cond_5
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMidiInfo()Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMidiInfo()Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMidiInfo()Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 223
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMidiInfo()Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setMidiInfo(Lorg/chromium/chrome/browser/preferences/website/MidiInfo;)V

    .line 225
    :cond_6
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getProtectedMediaIdentifierInfo()Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getProtectedMediaIdentifierInfo()Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getProtectedMediaIdentifierInfo()Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 229
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getProtectedMediaIdentifierInfo()Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setProtectedMediaIdentifierInfo(Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;)V

    .line 231
    :cond_7
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getNotificationInfo()Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getNotificationInfo()Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getNotificationInfo()Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 235
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getNotificationInfo()Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setNotificationInfo(Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;)V

    .line 237
    :cond_8
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 238
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getOrigin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "*"

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 241
    :cond_9
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setCameraInfo(Lorg/chromium/chrome/browser/preferences/website/CameraInfo;)V

    .line 244
    :cond_a
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    move-result-object v6

    if-nez v6, :cond_c

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 245
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getOrigin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "*"

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 248
    :cond_b
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setMicrophoneInfo(Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;)V

    .line 251
    :cond_c
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->getLocalStorageInfo()Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getLocalStorageInfo()Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getLocalStorageInfo()Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->getOrigin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 254
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getLocalStorageInfo()Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/preferences/website/Website;->setLocalStorageInfo(Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;)V

    .line 256
    :cond_d
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getStorageInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;

    .line 257
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 258
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->addStorageInfo(Lorg/chromium/chrome/browser/preferences/website/StorageInfo;)V

    goto :goto_0

    .line 269
    :cond_f
    return-object v3
.end method

.method private static permissionInfoIsForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/PermissionInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private popBackIfNoSettings()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasPermissionsPreferences()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasUsagePreferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 585
    :cond_0
    return-void
.end method

.method private resetSite()V
    .locals 5

    .prologue
    .line 635
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 641
    sget-object v2, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->PERMISSION_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 642
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 643
    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 641
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setCameraPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 648
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setCookiePermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 649
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeClearCookieData(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setFullscreenPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 651
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setGeolocationPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 652
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setJavaScriptPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 653
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setKeygenPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 654
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setMicrophonePermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 655
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setMidiPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 656
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setNotificationPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 657
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setPopupPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 658
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->setProtectedMediaIdentifierPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 661
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTotalUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 662
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->clearStoredData()V

    goto/16 :goto_0

    .line 667
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method private setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    if-nez p2, :cond_0

    .line 425
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 429
    check-cast v0, Landroid/preference/ListPreference;

    .line 431
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getContentSettingsTypeFromPreferenceKey(Ljava/lang/String;)I

    move-result v3

    .line 432
    new-array v4, v5, [Ljava/lang/String;

    .line 433
    new-array v5, v5, [Ljava/lang/String;

    .line 434
    sget-object v6, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 435
    sget-object v6, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 436
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getSiteSummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 438
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getSiteSummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 440
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 442
    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne p2, v4, :cond_1

    move v1, v2

    .line 443
    :cond_1
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 444
    invoke-static {v3}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getExplanation(I)I

    move-result v1

    .line 445
    if-eqz v1, :cond_2

    .line 446
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 449
    :cond_2
    invoke-virtual {v0}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    invoke-static {v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromContentSettingsType(I)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledInAndroid(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 453
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getDisabledInAndroidIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 454
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 462
    :goto_1
    const-string/jumbo v1, "%s"

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 456
    :cond_3
    invoke-static {v3}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setIcon(I)V

    goto :goto_1

    .line 459
    :cond_4
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getDisabledInChromeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setUpLocationPreference(Landroid/preference/Preference;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 467
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 469
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "org.chromium.chrome.preferences.location"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 470
    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasXGeoLocationPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    invoke-direct {v2, v0, v0, v4}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->setGeolocationInfo(Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;)V

    .line 473
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 474
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->updateLocationPreferenceForXGeo(Landroid/preference/Preference;)V

    .line 483
    :goto_0
    return-void

    .line 475
    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 476
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    new-instance v3, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    invoke-direct {v3, v1, v1, v4}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/preferences/website/Website;->setGeolocationInfo(Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;)V

    .line 478
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    goto :goto_1

    .line 481
    :cond_2
    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->setUpListPreference(Landroid/preference/Preference;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0
.end method

.method private showWarningFor(I)Z
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    .line 396
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 397
    const/4 v0, 0x0

    .line 401
    :goto_1
    return v0

    .line 390
    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_2
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 393
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophonePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_3
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromContentSettingsType(I)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPermissionBlockedMessage(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method private updateLocationPreferenceForXGeo(Landroid/preference/Preference;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    check-cast p1, Landroid/preference/ListPreference;

    .line 503
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 504
    new-array v1, v5, [Ljava/lang/String;

    sget v2, Lorg/chromium/chrome/R$string;->website_settings_permissions_allow_dse:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getSiteSummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 508
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 513
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_site_settings:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 161
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.chrome.preferences.site"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "org.chromium.chrome.preferences.origin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 167
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "org.chromium.chrome.preferences.web_contents"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 170
    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/Website;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 171
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->displaySitePermissions()V

    .line 182
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    return-void

    .line 172
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move-object v0, v1

    .line 173
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSiteAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    .line 175
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    new-instance v3, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;

    move-object v0, v2

    check-cast v0, Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v3, p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Lorg/chromium/content_public/browser/WebContents;)V

    invoke-direct {v1, v3}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;)V

    .line 177
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->fetchAllPreferences()V

    goto :goto_0

    .line 179
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Exactly one of EXTRA_SITE or EXTRA_SITE_ADDRESS must be provided."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->clearStoredData()V

    .line 560
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 589
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    .line 590
    const-string/jumbo v1, "camera_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setCameraPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 614
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_1
    const-string/jumbo v1, "cookies_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setCookiePermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    .line 594
    :cond_2
    const-string/jumbo v1, "fullscreen_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 595
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setFullscreenPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    .line 596
    :cond_3
    const-string/jumbo v1, "javascript_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 597
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setJavaScriptPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    .line 598
    :cond_4
    const-string/jumbo v1, "keygen_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 599
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setKeygenPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    .line 600
    :cond_5
    const-string/jumbo v1, "location_access_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 601
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setGeolocationPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    .line 602
    :cond_6
    const-string/jumbo v1, "microphone_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 603
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setMicrophonePermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto :goto_0

    .line 604
    :cond_7
    const-string/jumbo v1, "midi_sysex_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 605
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setMidiPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_0

    .line 606
    :cond_8
    const-string/jumbo v1, "push_notifications_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 607
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setNotificationPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_0

    .line 608
    :cond_9
    const-string/jumbo v1, "popup_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 609
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setPopupPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_0

    .line 610
    :cond_a
    const-string/jumbo v1, "protected_media_identifier_permission_list"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setProtectedMediaIdentifierPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 620
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->website_reset:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->website_reset_confirmation:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->website_reset:I

    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$2;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 631
    const/4 v0, 0x1

    return v0
.end method
