.class public Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "ChromeBaseCheckBoxPreference.java"


# instance fields
.field private mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 38
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->onBindViewToPreference(Landroid/preference/Preference;Landroid/view/View;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->onClickPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method

.method public setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V
    .locals 1

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->initPreference(Landroid/preference/Preference;)V

    .line 33
    :cond_0
    return-void
.end method
