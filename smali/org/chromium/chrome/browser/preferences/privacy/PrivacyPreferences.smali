.class public Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;
.super Landroid/preference/PreferenceFragment;
.source "PrivacyPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private createManagedPreferenceDelegate()Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->migrateNetworkPredictionPreferences()V

    .line 54
    sget v0, Lorg/chromium/chrome/R$xml;->privacy_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_privacy:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->setHasOptionsMenu(Z)V

    .line 58
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->createManagedPreferenceDelegate()Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    .line 60
    const-string/jumbo v0, "network_predictions"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 62
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getNetworkPredictionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setChecked(Z)V

    .line 64
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 69
    const-string/jumbo v0, "crash_dump_upload"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;

    .line 71
    const-string/jumbo v1, "crash_dump_upload_no_cellular"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isCellularExperimentEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :goto_0
    const-string/jumbo v0, "navigation_error"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 94
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 97
    const-string/jumbo v0, "search_suggestions"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 99
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v0, "contextual_search"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    :cond_0
    const-string/jumbo v0, "safe_browsing_extended_reporting"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 109
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 112
    const-string/jumbo v0, "safe_browsing"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 114
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 117
    invoke-static {}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->featureIsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string/jumbo v0, "physical_web"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->updateSummaries()V

    .line 122
    return-void

    .line 79
    :cond_2
    const-string/jumbo v4, "usage_and_crash_reports"

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isMobileNetworkCapable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    goto/16 :goto_0

    .line 85
    :cond_3
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 246
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    sget v1, Lorg/chromium/chrome/R$string;->menu_help:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 248
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_help_and_feedback:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 249
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->help_context_privacy:I

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 129
    instance-of v0, p1, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 130
    check-cast v0, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "search_suggestions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setSearchSuggestEnabled(Z)V

    .line 153
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_2
    const-string/jumbo v1, "safe_browsing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setSafeBrowsingEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_3
    const-string/jumbo v1, "safe_browsing_extended_reporting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setSafeBrowsingExtendedReportingEnabled(Z)V

    goto :goto_0

    .line 141
    :cond_4
    const-string/jumbo v1, "network_predictions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setNetworkPredictionEnabled(Z)V

    .line 143
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->updatePrecachingEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 144
    :cond_5
    const-string/jumbo v1, "navigation_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setResolveNavigationErrorEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_6
    const-string/jumbo v1, "crash_dump_upload_no_cellular"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setCrashReporting(Z)V

    goto :goto_0

    .line 148
    :cond_7
    const-string/jumbo v1, "crash_dump_upload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setUploadCrashDump(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 159
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->updateSummaries()V

    .line 160
    return-void
.end method

.method public updateSummaries()V
    .locals 6

    .prologue
    .line 166
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v4

    .line 171
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->text_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->text_off:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 174
    const-string/jumbo v0, "navigation_error"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 176
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isResolveNavigationErrorEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    const-string/jumbo v0, "search_suggestions"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 180
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSearchSuggestEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    const-string/jumbo v0, "safe_browsing_extended_reporting"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 184
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSafeBrowsingExtendedReportingEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    const-string/jumbo v0, "safe_browsing"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 189
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSafeBrowsingEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    const-string/jumbo v0, "do_not_track"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 192
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isDoNotTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    const-string/jumbo v0, "contextual_search"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 195
    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchDisabled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 197
    :goto_1
    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    const-string/jumbo v0, "physical_web"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isPhysicalWebEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isCellularExperimentEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string/jumbo v0, "usage_and_crash_reports"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 208
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUsageAndCrashReportingEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    .line 192
    goto :goto_0

    .line 196
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 197
    goto :goto_2

    :cond_6
    move-object v0, v2

    .line 202
    goto :goto_3

    :cond_7
    move-object v1, v2

    .line 208
    goto :goto_4
.end method
