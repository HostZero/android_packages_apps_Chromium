.class public Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;
.super Landroid/preference/ListPreference;
.source "ChromeBaseListPreference.java"


# instance fields
.field private mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 40
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->onBindViewToPreference(Landroid/preference/Preference;Landroid/view/View;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->onClickPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    goto :goto_0
.end method

.method public setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->initPreference(Landroid/preference/Preference;)V

    .line 35
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 53
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 61
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;->notifyChanged()V

    goto :goto_0
.end method
