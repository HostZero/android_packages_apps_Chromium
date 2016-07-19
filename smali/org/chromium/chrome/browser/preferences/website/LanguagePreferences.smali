.class public Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;
.super Landroid/preference/PreferenceFragment;
.source "LanguagePreferences.java"


# static fields
.field public static final PREF_AUTO_DETECT_CHECKBOX:Ljava/lang/String; = "auto_detect_encoding_checkbox"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lorg/chromium/chrome/R$xml;->language_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->addPreferencesFromResource(I)V

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->language:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->setHasOptionsMenu(Z)V

    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "translate_checkbox"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 45
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isTranslateEnabled()Z

    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setChecked(Z)V

    .line 48
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences$2;-><init>(Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 62
    const-string/jumbo v0, "auto_detect_encoding_checkbox"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 65
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAutoDetectEncodingEnabled()Z

    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setChecked(Z)V

    .line 69
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences$3;-><init>(Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 81
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    sget v1, Lorg/chromium/chrome/R$string;->menu_help:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_help_and_feedback:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 84
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_reset:I

    sget v1, Lorg/chromium/chrome/R$string;->reset_translate_defaults:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 92
    sget v3, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    if-ne v2, v3, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->help_context_translate:I

    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 104
    :goto_0
    return v0

    .line 97
    :cond_0
    sget v3, Lorg/chromium/chrome/R$id;->menu_id_reset:I

    if-ne v2, v3, :cond_1

    .line 98
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->resetTranslateDefaults()V

    .line 99
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->translate_prefs_toast_description:I

    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/preferences/website/LanguagePreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0
.end method
