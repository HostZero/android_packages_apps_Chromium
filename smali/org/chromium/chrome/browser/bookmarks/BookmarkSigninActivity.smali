.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;
.source "BookmarkSigninActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;
.implements Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;
.implements Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

.field private mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;-><init>()V

    .line 31
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method


# virtual methods
.method public androidSyncSettingsChanged()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;

    .line 72
    invoke-interface {v0}, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;->androidSyncSettingsChanged()V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public enableSync()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStart()V

    .line 107
    :cond_0
    return-void
.end method

.method public getAccessPoint()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x9

    return v0
.end method

.method public getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    return-object v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onAccountSelectionCancelled()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->finish()V

    .line 135
    return-void
.end method

.method public onAccountSelectionConfirmed()V
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "Stars_SignInPromoActivity_SignedIn"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "Signin_Signin_FromBookmarkManager"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string/jumbo v0, "Stars_SignInPromoActivity_Launched"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 41
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    invoke-direct {v0, p0, p0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-static {p0, p0}, Lorg/chromium/sync/AndroidSyncSettings;->registerObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 45
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->finish()V

    .line 51
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onDestroy()V

    .line 56
    invoke-static {p0, p0}, Lorg/chromium/sync/AndroidSyncSettings;->unregisterObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->removeSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 59
    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->destroy()V

    .line 63
    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 65
    :cond_0
    return-void
.end method

.method public onNewAccount()V
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "Stars_SignInPromoActivity_NewAccount"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onSignedIn()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->androidSyncSettingsChanged()V

    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->finish()V

    .line 82
    return-void
.end method

.method public onSignedOut()V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "onSignedOut() called on signin activity."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_0
    return-void
.end method

.method public registerForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public unregisterForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method
