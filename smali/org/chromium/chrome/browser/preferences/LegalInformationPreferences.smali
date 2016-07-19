.class public Lorg/chromium/chrome/browser/preferences/LegalInformationPreferences;
.super Landroid/preference/PreferenceFragment;
.source "LegalInformationPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v0, Lorg/chromium/chrome/R$xml;->legal_information_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/LegalInformationPreferences;->addPreferencesFromResource(I)V

    .line 21
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/LegalInformationPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->legal_information_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 22
    return-void
.end method
