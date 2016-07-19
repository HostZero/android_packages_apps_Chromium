.class public Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "UsageAndCrashReportsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initUsageAndCrashReportsSwitch()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "usage_and_crash_reports_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUsageAndCrashReportingEnabled()Z

    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 40
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$1;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$2;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lorg/chromium/chrome/R$xml;->usage_and_crash_reports_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->usage_and_crash_reports_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->initUsageAndCrashReportsSwitch()V

    .line 31
    return-void
.end method
