.class public Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;
.super Landroid/support/v4/app/w;
.source "PassphraseActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FRAGMENT_PASSPHRASE:Ljava/lang/String; = "passphrase_fragment"

.field public static final FRAGMENT_SPINNER:Ljava/lang/String; = "spinner_fragment"


# instance fields
.field private mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->removeSyncStateChangedListener()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->displayPassphraseDialog()V

    return-void
.end method

.method private addSyncStateChangedListener()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 97
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    goto :goto_0
.end method

.method private displayPassphraseDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 115
    invoke-static {v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->newInstance(Landroid/app/Fragment;)Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    move-result-object v1

    const-string/jumbo v2, "passphrase_fragment"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private displaySpinnerDialog()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 121
    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$SpinnerDialogFragment;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$SpinnerDialogFragment;-><init>()V

    .line 122
    const-string/jumbo v2, "spinner_fragment"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$SpinnerDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private isShowingDialog(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeSyncStateChangedListener()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->finish()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onCreate(Landroid/os/Bundle;)V

    .line 47
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "PassphraseActivity"

    const-string/jumbo v2, "Failed to start browser process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->reportStartupErrorAndExit(Lorg/chromium/base/library_loader/ProcessInitException;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    goto :goto_0
.end method

.method public onPassphraseCanceled()V
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lorg/chromium/chrome/browser/sync/SyncController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/sync/SyncController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/SyncController;->getSyncNotificationController()Lorg/chromium/chrome/browser/sync/SyncNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->syncStateChanged()V

    .line 142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->finish()V

    .line 143
    return-void
.end method

.method public onPassphraseEntered(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setDecryptionPassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->finish()V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/w;->onPause()V

    .line 81
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->removeSyncStateChangedListener()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/w;->onResume()V

    .line 60
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->finish()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string/jumbo v0, "passphrase_fragment"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->isShowingDialog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->displayPassphraseDialog()V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->addSyncStateChangedListener()V

    .line 71
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->displaySpinnerDialog()V

    goto :goto_0
.end method
