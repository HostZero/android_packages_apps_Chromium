.class public Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ContextualSearchPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initContextualSearchSwitch()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "contextual_search_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 38
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 42
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$1;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    new-instance v1, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$2;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 56
    return-void

    .line 38
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lorg/chromium/chrome/R$xml;->contextual_search_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->contextual_search_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;->initContextualSearchSwitch()V

    .line 32
    return-void
.end method
