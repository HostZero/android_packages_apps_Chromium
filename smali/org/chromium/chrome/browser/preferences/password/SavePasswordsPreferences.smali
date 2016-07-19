.class public Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;
.super Landroid/preference/PreferenceFragment;
.source "SavePasswordsPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;


# static fields
.field public static final PASSWORD_LIST_ID:Ljava/lang/String; = "id"

.field public static final PASSWORD_LIST_NAME:Ljava/lang/String; = "name"

.field public static final PASSWORD_LIST_URL:Ljava/lang/String; = "url"

.field public static final PREF_AUTOSIGNIN_SWITCH:Ljava/lang/String; = "autosignin_switch"

.field public static final PREF_SAVE_PASSWORDS_SWITCH:Ljava/lang/String; = "save_passwords_switch"


# instance fields
.field private mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mLinkPref:Landroid/preference/Preference;

.field private mNoPasswordExceptions:Z

.field private mNoPasswords:Z

.field private final mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

.field private mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/PasswordUIView;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

    return-void
.end method

.method private createAutoSignInCheckbox()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-credential-manager-api"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 264
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    const-string/jumbo v1, "autosignin_switch"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    sget v1, Lorg/chromium/chrome/R$string;->passwords_auto_signin_title:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setTitle(I)V

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOrder(I)V

    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    sget v1, Lorg/chromium/chrome/R$string;->passwords_auto_signin_description:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setSummary(I)V

    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$3;-><init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$4;-><init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 282
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mAutoSignInSwitch:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isPasswordManagerAutoSigninEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private createSavePasswordsSwitch()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const-string/jumbo v1, "save_passwords_switch"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    sget v1, Lorg/chromium/chrome/R$string;->prefs_saved_passwords:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setTitle(I)V

    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOrder(I)V

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    sget v1, Lorg/chromium/chrome/R$string;->text_on:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOn(I)V

    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    sget v1, Lorg/chromium/chrome/R$string;->text_off:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOff(I)V

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$2;-><init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 249
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mSavePasswordsSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isRememberPasswordsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 257
    return-void
.end method

.method private displayEmptyScreenMessage()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_0
    return-void
.end method

.method private displayManageAccountLink()V
    .locals 7

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "manage_account_link"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 292
    sget v1, Lorg/chromium/chrome/R$string;->manage_passwords_text:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v3, 0x0

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<link>"

    const-string/jumbo v6, "</link>"

    invoke-direct {v4, v5, v6, v0}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    .line 295
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    .line 296
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    const-string/jumbo v2, "manage_account_link"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_1
    return-void
.end method

.method private resetList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 126
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {}, Lorg/chromium/chrome/browser/PasswordUIView;->shouldUseSmartLockBranding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_smart_lock_for_passwords:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/PasswordUIView;->addObserver(Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;)V

    .line 84
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->saved_passwords_none_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->prefs_saved_passwords:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PasswordUIView;->destroy()V

    .line 203
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->rebuildPasswordLists()V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mLinkPref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {}, Lorg/chromium/chrome/browser/PasswordUIView;->getAccountDashboardURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 226
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "show_fragment_args"

    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 196
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->rebuildPasswordLists()V

    .line 197
    return-void
.end method

.method public passwordExceptionListAvailable(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 167
    const-string/jumbo v0, "exceptions"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->resetList(Ljava/lang/String;)V

    .line 168
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswordExceptions:Z

    .line 169
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswordExceptions:Z

    if-eqz v0, :cond_2

    .line 170
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswords:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->displayEmptyScreenMessage()V

    .line 191
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0

    .line 174
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->displayManageAccountLink()V

    .line 176
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 177
    const-string/jumbo v2, "exceptions"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 178
    sget v2, Lorg/chromium/chrome/R$string;->section_saved_passwords_exceptions:I

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 179
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 180
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    :goto_1
    if-ge v1, p1, :cond_0

    .line 182
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->getSavedPasswordException(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 187
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v2, "id"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public passwordListAvailable(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 134
    const-string/jumbo v0, "saved_passwords"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->resetList(Ljava/lang/String;)V

    .line 135
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswords:Z

    .line 136
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswords:Z

    if-eqz v0, :cond_2

    .line 137
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswordExceptions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->displayEmptyScreenMessage()V

    .line 163
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->displayManageAccountLink()V

    .line 143
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 144
    const-string/jumbo v2, "saved_passwords"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 145
    sget v2, Lorg/chromium/chrome/R$string;->section_saved_passwords:I

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 146
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    :goto_1
    if-ge v1, p1, :cond_0

    .line 149
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->getSavedPasswordEntry(I)Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 152
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 158
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v2, "url"

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "id"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method rebuildPasswordLists()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswords:Z

    .line 113
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mNoPasswordExceptions:Z

    .line 114
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->createSavePasswordsSwitch()V

    .line 117
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->createAutoSignInCheckbox()V

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->mPasswordManagerHandler:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PasswordUIView;->updatePasswordLists()V

    .line 119
    return-void
.end method
