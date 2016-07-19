.class public Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;
.super Landroid/preference/ListPreference;
.source "SyncedAccountPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->sync_to_account_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->updateAccountsList()V

    .line 32
    return-void
.end method

.method private updateAccountsList()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setEnabled(Z)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 51
    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    .line 52
    array-length v1, v2

    new-array v4, v1, [Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v5

    .line 56
    const-string/jumbo v1, ""

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 58
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_2

    .line 59
    aget-object v6, v2, v1

    .line 60
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v3, v1

    .line 61
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v1

    .line 62
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    aget-object v0, v4, v1

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 77
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->updateAccountsList()V

    .line 40
    return-void
.end method
