.class public Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;
.super Ljava/lang/Object;
.source "SyncAccountSwitcher.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;
.implements Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mNewAccountName:Ljava/lang/String;

.field private final mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mNewAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .prologue
    .line 67
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mNewAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;

    invoke-direct {v1, p0, p0}, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;-><init>(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    if-nez p2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v4

    .line 52
    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mNewAccountName:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mNewAccountName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mNewAccountName:Ljava/lang/String;

    sget-object v2, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->showNewInstance(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;Landroid/app/FragmentManager;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;)V

    goto :goto_0
.end method

.method public onSignInAborted()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onSignInComplete()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mSyncedAccountPreference:Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SyncedAccountPreference;->update()V

    .line 84
    return-void
.end method
