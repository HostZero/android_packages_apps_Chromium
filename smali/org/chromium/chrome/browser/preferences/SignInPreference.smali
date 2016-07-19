.class public Lorg/chromium/chrome/browser/preferences/SignInPreference;
.super Landroid/preference/Preference;
.source "SignInPreference.java"

# interfaces
.implements Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;


# instance fields
.field private mViewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setShouldDisableView(Z)V

    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->update()V

    .line 43
    return-void
.end method

.method private static getSyncSummaryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    sget v0, Lorg/chromium/chrome/R$string;->account_management_sync_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->sync_is_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private update()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v4

    .line 74
    if-nez v4, :cond_3

    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->sign_in_to_chrome:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->sign_in_to_chrome_summary:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    .line 94
    :goto_0
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setFragment(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_1
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/SignInPreference;->mViewEnabled:Z

    if-eq v3, v0, :cond_1

    .line 102
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SignInPreference;->mViewEnabled:Z

    .line 103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->notifyChanged()V

    .line 105
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setFragment(Ljava/lang/String;)V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSigninDisabledByPolicy()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->getManagedByEnterpriseIconId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setIcon(I)V

    .line 115
    :goto_2
    return-void

    .line 79
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getSyncSummaryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-class v0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getCachedUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-nez v0, :cond_9

    .line 83
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v5

    .line 84
    invoke-static {v5}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->getCachedFullName(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v5}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->getCachedAvatar(Lorg/chromium/chrome/browser/profiles/Profile;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v6, :cond_5

    .line 87
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->startFetchingAccountInformation(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 90
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_6
    move-object v8, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_0

    .line 99
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 110
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    invoke-virtual {v2}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getUserPicture(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 113
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    move-object v8, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 131
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SignInPreference;->mViewEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/SignInPreference;->mViewEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/SignInPreference;->mViewEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    return-void
.end method

.method public onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 148
    invoke-static {p1, p2, p4}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->updateUserNamePictureCache(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 149
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->update()V

    .line 150
    return-void
.end method

.method public onSignInAllowedChanged()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->update()V

    .line 141
    return-void
.end method

.method public registerForUpdates()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInAllowedObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;)V

    .line 51
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->addObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 52
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->updateSigninManagerFirstRunCheckDone(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public unregisterForUpdates()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SignInPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->removeSignInAllowedObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;)V

    .line 62
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->removeObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 63
    return-void
.end method
