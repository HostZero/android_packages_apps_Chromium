.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;
.super Landroid/preference/PreferenceFragment;
.source "AutofillServerProfilePreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mGUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lorg/chromium/chrome/R$xml;->autofill_server_profile_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->autofill_edit_profile:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 35
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->mGUID:Ljava/lang/String;

    .line 39
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->mGUID:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfile(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_2
    sget-boolean v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getIsLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_3
    const-string/jumbo v1, "server_profile_description"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    const-string/jumbo v0, "server_profile_edit_link"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 57
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "server_profile_edit_link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->autofill_edit_profile:I

    sget v2, Lorg/chromium/chrome/R$string;->autofill_manage_wallet_addresses_url:I

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;II)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
