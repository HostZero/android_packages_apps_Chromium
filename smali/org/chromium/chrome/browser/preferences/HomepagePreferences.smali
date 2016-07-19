.class public Lorg/chromium/chrome/browser/preferences/HomepagePreferences;
.super Landroid/preference/PreferenceFragment;
.source "HomepagePreferences.java"


# instance fields
.field private mHomepageEdit:Landroid/preference/Preference;

.field private mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

.field private mHomepageSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/HomepagePreferences;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    return-object v0
.end method

.method private updateCurrentHomepageUrl()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageEdit:Landroid/preference/Preference;

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageUseDefaultUri()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->getHomePageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageCustomUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->options_homepage_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 32
    sget v0, Lorg/chromium/chrome/R$xml;->homepage_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->addPreferencesFromResource(I)V

    .line 34
    const-string/jumbo v0, "homepage_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageEnabled()Z

    move-result v0

    .line 36
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/HomepagePreferences$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/HomepagePreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    const-string/jumbo v0, "homepage_edit"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageEdit:Landroid/preference/Preference;

    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->updateCurrentHomepageUrl()V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 56
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->updateCurrentHomepageUrl()V

    .line 57
    return-void
.end method
