.class public Lorg/chromium/chrome/browser/preferences/MainPreferences;
.super Landroid/preference/PreferenceFragment;
.source "MainPreferences.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;


# static fields
.field public static final ACCOUNT_PICKER_DIALOG_TAG:Ljava/lang/String; = "account_picker_dialog_tag"

.field public static final EXTRA_SHOW_SEARCH_ENGINE_PICKER:Ljava/lang/String; = "show_search_engine_picker"

.field public static final PREF_AUTOFILL_SETTINGS:Ljava/lang/String; = "autofill_settings"

.field public static final PREF_DATA_REDUCTION:Ljava/lang/String; = "data_reduction"

.field public static final PREF_DOCUMENT_MODE:Ljava/lang/String; = "document_mode"

.field public static final PREF_HOMEPAGE:Ljava/lang/String; = "homepage"

.field public static final PREF_SAVED_PASSWORDS:Ljava/lang/String; = "saved_passwords"

.field public static final PREF_SEARCH_ENGINE:Ljava/lang/String; = "search_engine"

.field public static final PREF_SIGN_IN:Ljava/lang/String; = "sign_in"


# instance fields
.field private mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

.field private mShowSearchEnginePicker:Z

.field private mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->setHasOptionsMenu(Z)V

    .line 50
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->createManagedPreferenceDelegate()Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/MainPreferences;)Lorg/chromium/chrome/browser/preferences/SignInPreference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->updatePreferences()V

    return-void
.end method

.method private createManagedPreferenceDelegate()Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lorg/chromium/chrome/browser/preferences/MainPreferences$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences$3;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    return-object v0
.end method

.method private registerSignInPref()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->unregisterSignInPref()V

    .line 154
    const-string/jumbo v0, "sign_in"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SignInPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->registerForUpdates()V

    .line 156
    return-void
.end method

.method private setOnOffSummary(Landroid/preference/Preference;Z)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_0

    sget v0, Lorg/chromium/chrome/R$string;->text_on:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    return-void

    .line 149
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->text_off:I

    goto :goto_0
.end method

.method private unregisterSignInPref()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->unregisterForUpdates()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    .line 163
    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 84
    :cond_0
    sget v1, Lorg/chromium/chrome/R$xml;->main_preferences:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->addPreferencesFromResource(I)V

    .line 86
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->registerSignInPref()V

    .line 87
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    new-instance v2, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mSignInPreference:Lorg/chromium/chrome/browser/preferences/SignInPreference;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setEnabled(Z)V

    .line 106
    const-string/jumbo v1, "document_mode"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentModeEligible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptedOutOfDocumentMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->setOnOffSummary(Landroid/preference/Preference;Z)V

    .line 114
    :goto_1
    const-string/jumbo v0, "autofill_settings"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 116
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->isAutofillEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->setOnOffSummary(Landroid/preference/Preference;Z)V

    .line 117
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 119
    const-string/jumbo v0, "saved_passwords"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 121
    invoke-static {}, Lorg/chromium/chrome/browser/PasswordUIView;->shouldUseSmartLockBranding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->prefs_smart_lock_for_passwords:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isRememberPasswordsEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->setOnOffSummary(Landroid/preference/Preference;Z)V

    .line 127
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 129
    const-string/jumbo v0, "homepage"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 130
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->shouldShowHomepageSetting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->setOnOffSummary(Landroid/preference/Preference;Z)V

    .line 137
    :goto_2
    const-string/jumbo v0, "data_reduction"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 139
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyAllowed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->generateSummary(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mManagedPreferenceDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 146
    :goto_3
    return-void

    .line 108
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 134
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_search_engine_picker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mShowSearchEnginePicker:Z

    .line 61
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->removeSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 79
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->unregisterSignInPref()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 67
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->updatePreferences()V

    .line 69
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mShowSearchEnginePicker:Z

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->mShowSearchEnginePicker:Z

    .line 71
    const-string/jumbo v0, "search_engine"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->showDialog()V

    .line 73
    :cond_0
    return-void
.end method

.method public onSignedIn()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/preferences/MainPreferences$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences$2;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public onSignedOut()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->updatePreferences()V

    .line 182
    return-void
.end method
