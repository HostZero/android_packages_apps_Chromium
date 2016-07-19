.class public abstract Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.super Ljava/lang/Object;
.source "ManagedPreferenceDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static disableView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 111
    check-cast p0, Landroid/view/ViewGroup;

    .line 112
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->disableView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public initPreference(Landroid/preference/Preference;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->getManagedByEnterpriseIconId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 58
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->isPreferenceClickDisabledByPolicy(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    :cond_0
    return-void
.end method

.method public isPreferenceClickDisabledByPolicy(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public abstract isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
.end method

.method public onBindViewToPreference(Landroid/preference/Preference;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->isPreferenceClickDisabledByPolicy(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p2}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->disableView(Landroid/view/View;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onClickPreference(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->isPreferenceClickDisabledByPolicy(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->showManagedByAdministratorToast(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
