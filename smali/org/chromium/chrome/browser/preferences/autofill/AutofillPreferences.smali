.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AutofillPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;


# static fields
.field public static final AUTOFILL_GUID:Ljava/lang/String; = "guid"

.field public static final SETTINGS_ORIGIN:Ljava/lang/String; = "Chrome settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private rebuildCreditCardList()V
    .locals 6

    .prologue
    .line 111
    const-string/jumbo v0, "autofill_credit_cards"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 113
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 114
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getCreditCards()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 116
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getFormattedExpirationDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-class v4, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 127
    :goto_1
    invoke-virtual {v3}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 128
    const-string/jumbo v5, "guid"

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 123
    :cond_0
    sget v4, Lorg/chromium/chrome/R$layout;->autofill_server_data_label:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 124
    const-class v4, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_1
    return-void
.end method

.method private rebuildProfileList()V
    .locals 6

    .prologue
    .line 89
    const-string/jumbo v0, "autofill_profiles"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 90
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 91
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 93
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getIsLocal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-class v4, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 104
    :goto_1
    invoke-virtual {v3}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 105
    const-string/jumbo v5, "guid"

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 100
    :cond_0
    sget v4, Lorg/chromium/chrome/R$layout;->autofill_server_data_label:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 101
    const-class v4, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_1
    return-void
.end method

.method private refreshState()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->updateSummaries()V

    .line 82
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->rebuildProfileList()V

    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->rebuildCreditCardList()V

    .line 84
    return-void
.end method

.method private setPreferenceCategoryIcons()V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->plus:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    const-string/jumbo v1, "autofill_profiles"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->plus:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    const-string/jumbo v1, "autofill_credit_cards"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method private updateSummaries()V
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "autofill_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 136
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->isAutofillEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->registerDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V

    .line 158
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lorg/chromium/chrome/R$xml;->autofill_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_autofill:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 42
    const-string/jumbo v0, "autofill_switch"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 44
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->setPreferenceCategoryIcons()V

    .line 53
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->unregisterDataObserver(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$PersonalDataManagerObserver;)V

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 164
    return-void
.end method

.method public onPersonalDataChanged()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->refreshState()V

    .line 152
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->refreshState()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;->refreshState()V

    .line 147
    return-void
.end method
