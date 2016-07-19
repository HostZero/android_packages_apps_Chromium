.class public Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;
.super Landroid/preference/PreferenceFragment;
.source "DoNotTrackPreference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lorg/chromium/chrome/R$xml;->do_not_track_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;->addPreferencesFromResource(I)V

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->do_not_track_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 29
    const-string/jumbo v0, "do_not_track_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 32
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isDoNotTrackEnabled()Z

    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 35
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    return-void
.end method
