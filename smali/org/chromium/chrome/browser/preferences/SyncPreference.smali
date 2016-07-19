.class public Lorg/chromium/chrome/browser/preferences/SyncPreference;
.super Landroid/preference/Preference;
.source "SyncPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SyncPreference;->updateSyncSummary()V

    .line 27
    return-void
.end method

.method private static getSyncStatusSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 77
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;->isChildAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    sget v0, Lorg/chromium/chrome/R$string;->kids_account:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->isMasterSyncEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    sget v0, Lorg/chromium/chrome/R$string;->sync_android_master_sync_disabled:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    if-nez v0, :cond_3

    .line 51
    sget v0, Lorg/chromium/chrome/R$string;->sync_is_disabled:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    if-eq v2, v3, :cond_4

    .line 55
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->getMessage()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_4
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 63
    if-eqz v2, :cond_7

    .line 64
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 65
    sget v0, Lorg/chromium/chrome/R$string;->sync_setup_progress:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    sget v0, Lorg/chromium/chrome/R$string;->sync_need_passphrase:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_6
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    .line 73
    sget v1, Lorg/chromium/chrome/R$string;->account_management_sync_summary:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_7
    sget v0, Lorg/chromium/chrome/R$string;->sync_is_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public updateSyncSummary()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SyncPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/SyncPreference;->getSyncStatusSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SyncPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
