.class public Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;
.super Landroid/preference/PreferenceFragment;
.source "AboutChromePreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isOfficialBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-object p1

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->version_with_update_time:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_about_chrome:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 35
    sget v0, Lorg/chromium/chrome/R$xml;->about_chrome_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->addPreferencesFromResource(I)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->DeprecationWarningPreferenceTheme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setOrder(I)V

    .line 42
    sget v1, Lorg/chromium/chrome/R$string;->deprecation_warning:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setTitle(I)V

    .line 43
    sget v1, Lorg/chromium/chrome/R$drawable;->exclamation_triangle:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setIcon(I)V

    .line 44
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 47
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAboutVersionStrings()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "application_version"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    const-string/jumbo v1, "os_version"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    const-string/jumbo v0, "legal_information"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 55
    sget v2, Lorg/chromium/chrome/R$string;->legal_information_summary:I

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
