.class public Lorg/chromium/chrome/browser/signin/SigninPromoScreen;
.super Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;
.source "SigninPromoScreen.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

.field private mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 72
    sget v0, Lorg/chromium/chrome/R$style;->SigninPromoDialog:I

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;-><init>(Landroid/app/Activity;I)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->setOwnerActivity(Landroid/app/Activity;)V

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    sget v1, Lorg/chromium/chrome/R$layout;->account_signin_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->init(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->configureForAddAccountPromo()V

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setListener(Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setDelegate(Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;)V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mAccountFirstRunView:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method public static launchSigninPromoIfNeeded(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v1

    .line 48
    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isLegacyMultiWindow(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getShowSigninPromo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setShowSigninPromo(Z)V

    .line 52
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getSyncLastAccountName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/signin/SigninManager;->getAndroidSigninPromoExperimentGroup()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;-><init>(Landroid/app/Activity;)V

    .line 60
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->show()V

    .line 61
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->logSigninStartAccessPoint(I)V

    .line 62
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setSigninPromoShown()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;->dismiss()V

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->destroy()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 100
    return-void
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public onAccountSelected(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 114
    if-eqz p2, :cond_1

    .line 115
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string/jumbo v2, "account"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v2, "show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->recordAction(I)V

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->dismiss()V

    .line 143
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "Signin_Signin_FromSigninPromo"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/signin/SigninPromoScreen$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen$1;-><init>(Lorg/chromium/chrome/browser/signin/SigninPromoScreen;)V

    invoke-virtual {v1, p1, v0, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Ljava/lang/String;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    goto :goto_0
.end method

.method public onAccountSelectionCanceled()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->recordAction(I)V

    .line 104
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->dismiss()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->recordAction(I)V

    .line 92
    const-string/jumbo v0, "Signin_Impression_FromSigninPromo"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onFailedToSetForcedAccount(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No forced accounts in SigninPromoScreen"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method public onNewAccount()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->getInstance()Lorg/chromium/chrome/browser/signin/AccountAdder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountAdder;->addAccount(Landroid/app/Activity;I)V

    .line 110
    return-void
.end method
