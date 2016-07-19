.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AutofillServerCardPreferences.java"

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
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lorg/chromium/chrome/R$xml;->autofill_server_card_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->autofill_edit_credit_card:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->mGUID:Ljava/lang/String;

    .line 41
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->mGUID:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getCreditCard(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    :goto_0
    return-void

    .line 48
    :cond_2
    sget-boolean v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_3
    const-string/jumbo v1, "server_card_description"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getFormattedExpirationDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    const-string/jumbo v1, "server_card_edit_link"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    const-string/jumbo v1, "server_card_local_copy_button"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsCached()Z

    move-result v0

    if-nez v0, :cond_4

    .line 58
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "server_card_edit_link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->autofill_edit_credit_card:I

    sget v2, Lorg/chromium/chrome/R$string;->autofill_manage_wallet_cards_url:I

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;II)V

    .line 75
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "server_card_local_copy_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->clearUnmaskedCache(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
