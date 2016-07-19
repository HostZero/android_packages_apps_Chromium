.class public Lorg/chromium/chrome/browser/signin/SigninManager;
.super Ljava/lang/Object;
.source "SigninManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONFIRM_MANAGED_SIGNIN_DIALOG_TAG:Ljava/lang/String; = "confirm_managed_signin_dialog_tag"

.field private static sSignInAccessPoint:I

.field private static sSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFirstRunCheckIsPending:Z

.field private final mNativeSigninManagerAndroid:J

.field private final mSignInAllowedObservers:Lorg/chromium/base/ObserverList;

.field private mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

.field private final mSignInStateObservers:Lorg/chromium/base/ObserverList;

.field private mSignOutCallback:Ljava/lang/Runnable;

.field private mSigninAllowedByPolicy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/SigninManager;->$assertionsDisabled:Z

    .line 51
    const/16 v0, 0x11

    sput v0, Lorg/chromium/chrome/browser/signin/SigninManager;->sSignInAccessPoint:I

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mFirstRunCheckIsPending:Z

    .line 63
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInStateObservers:Lorg/chromium/base/ObserverList;

    .line 66
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInAllowedObservers:Lorg/chromium/base/ObserverList;

    .line 202
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    .line 205
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeIsSigninAllowedByPolicy(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSigninAllowedByPolicy:Z

    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->addSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/signin/SigninManager;)Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInAllowedObservers:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method private finishSignIn()V
    .locals 3

    .prologue
    .line 460
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/SigninManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 463
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeOnSignInCompleted(JLjava/lang/String;)V

    .line 467
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/sync/signin/ChromeSigninController;->setSignedInAccountName(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;->onSignInComplete()V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->logInSignedInUser()V

    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    const-string/jumbo v0, "Signin_Signin_Succeed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->logSigninCompleteAccessPoint()V

    .line 482
    const-string/jumbo v0, "Signin.SigninReason"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 487
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    .line 488
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->notifySignInAllowedChanged()V

    .line 490
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInStateObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;

    .line 491
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;->onSignedIn()V

    goto :goto_0

    .line 493
    :cond_3
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 195
    sget-object v0, Lorg/chromium/chrome/browser/signin/SigninManager;->sSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/signin/SigninManager;->sSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 198
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/signin/SigninManager;->sSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    return-object v0
.end method

.method public static getAndroidSigninPromoExperimentGroup()I
    .locals 1

    .prologue
    .line 615
    const-string/jumbo v0, "AndroidSigninPromo"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 619
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private logSigninCompleteAccessPoint()V
    .locals 3

    .prologue
    .line 221
    const-string/jumbo v0, "Signin.SigninCompletedAccessPoint"

    sget v1, Lorg/chromium/chrome/browser/signin/SigninManager;->sSignInAccessPoint:I

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 223
    const/16 v0, 0x11

    sput v0, Lorg/chromium/chrome/browser/signin/SigninManager;->sSignInAccessPoint:I

    .line 224
    return-void
.end method

.method public static logSigninStartAccessPoint(I)V
    .locals 2

    .prologue
    .line 215
    const-string/jumbo v0, "Signin.SigninStartedAccessPoint"

    const/16 v1, 0x12

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 217
    sput p0, Lorg/chromium/chrome/browser/signin/SigninManager;->sSignInAccessPoint:I

    .line 218
    return-void
.end method

.method private native nativeAbortSignIn(J)V
.end method

.method private native nativeCheckPolicyBeforeSignIn(JLjava/lang/String;)V
.end method

.method private native nativeClearLastSignedInUser(J)V
.end method

.method private native nativeFetchPolicyBeforeSignIn(J)V
.end method

.method private native nativeGetManagementDomain(J)Ljava/lang/String;
.end method

.method private native nativeInit()J
.end method

.method private native nativeIsSignedInOnNative(J)Z
.end method

.method private native nativeIsSigninAllowedByPolicy(J)Z
.end method

.method private native nativeLogInSignedInUser(J)V
.end method

.method private native nativeOnSignInCompleted(JLjava/lang/String;)V
.end method

.method private native nativeShouldLoadPolicyForUser(Ljava/lang/String;)Z
.end method

.method private native nativeSignOut(J)V
.end method

.method private native nativeWipeProfileData(JLorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V
.end method

.method private notifySignInAllowedChanged()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/signin/SigninManager$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/SigninManager$1;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method private onPolicyCheckedBeforeSignIn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 410
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/SigninManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 412
    :cond_0
    if-nez p1, :cond_1

    .line 414
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->finishSignIn()V

    .line 435
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    # invokes: Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->isActivityDestroyed()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->access$100(Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->abortSignIn()V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeFetchPolicyBeforeSignIn(J)V

    goto :goto_0

    .line 432
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->newInstance(Ljava/lang/String;)Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirm_managed_signin_dialog_tag"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPolicyFetchedBeforeSignIn()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->finishSignIn()V

    .line 456
    return-void
.end method

.method private onProfileDataWiped(Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V
    .locals 0

    .prologue
    .line 586
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;->postWipeData()V

    .line 587
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->onSignOutDone()V

    .line 588
    return-void
.end method

.method private onSignOutDone()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 592
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignOutCallback:Ljava/lang/Runnable;

    .line 596
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInStateObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;

    .line 597
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;->onSignedOut()V

    goto :goto_0

    .line 599
    :cond_1
    return-void
.end method

.method private onSigninAllowedByPolicyChanged(Z)V
    .locals 0

    .prologue
    .line 625
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSigninAllowedByPolicy:Z

    .line 626
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->notifySignInAllowedChanged()V

    .line 627
    return-void
.end method

.method private progressSignInFlowCheckPolicy()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-nez v0, :cond_0

    .line 387
    const-string/jumbo v0, "SigninManager"

    const-string/jumbo v1, "Ignoring sign in progress request as no pending sign in."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    # invokes: Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->isActivityDestroyed()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->access$100(Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->abortSignIn()V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeShouldLoadPolicyForUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->finishSignIn()V

    goto :goto_0

    .line 405
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeCheckPolicyBeforeSignIn(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private progressSignInFlowSeedSystemAccounts()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->checkAndSeedSystemAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->progressSignInFlowCheckPolicy()V

    .line 380
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->getInstance()Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->canBeUsed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->blockedOnAccountSeeding:Z

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->activity:Landroid/app/Activity;

    .line 373
    if-eqz v1, :cond_2

    new-instance v0, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;-><init>(Landroid/app/Activity;)V

    .line 376
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Landroid/content/Context;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;)Z

    .line 377
    const-string/jumbo v0, "SigninManager"

    const-string/jumbo v1, "Cancelling the sign-in process as Google Play services is unavailable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->abortSignIn()V

    goto :goto_0

    .line 373
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$SystemNotification;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$SystemNotification;-><init>()V

    goto :goto_1
.end method

.method private wipeProfileData(Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V
    .locals 2

    .prologue
    .line 579
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;->preWipeData()V

    .line 581
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeWipeProfileData(JLorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V

    .line 582
    return-void
.end method


# virtual methods
.method abortSignIn()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    .line 561
    sget-boolean v1, Lorg/chromium/chrome/browser/signin/SigninManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 562
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    .line 564
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 568
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    if-eqz v1, :cond_2

    .line 569
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;->onSignInAborted()V

    .line 572
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeAbortSignIn(J)V

    .line 575
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->notifySignInAllowedChanged()V

    .line 576
    return-void
.end method

.method public addSignInAllowedObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInAllowedObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInStateObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method public clearLastSignedInUser()V
    .locals 2

    .prologue
    .line 550
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeClearLastSignedInUser(J)V

    .line 551
    return-void
.end method

.method public getManagementDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeGetManagementDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSignInAllowed()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSigninAllowedByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mFirstRunCheckIsPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignedInOnNative()Z
    .locals 2

    .prologue
    .line 605
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeIsSignedInOnNative(J)Z

    move-result v0

    return v0
.end method

.method public isSigninDisabledByPolicy()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSigninAllowedByPolicy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logInSignedInUser()V
    .locals 2

    .prologue
    .line 546
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeLogInSignedInUser(J)V

    .line 547
    return-void
.end method

.method public onFirstRunCheckDone()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mFirstRunCheckIsPending:Z

    .line 234
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->notifySignInAllowedChanged()V

    .line 237
    :cond_0
    return-void
.end method

.method public onSystemAccountsChanged()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->abortSignIn()V

    .line 306
    :cond_0
    return-void
.end method

.method public onSystemAccountsSeedingComplete()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->blockedOnAccountSeeding:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->blockedOnAccountSeeding:Z

    .line 294
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->progressSignInFlowCheckPolicy()V

    .line 296
    :cond_0
    return-void
.end method

.method progressInteractiveSignInFlowManagedConfirmed()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    .line 448
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeFetchPolicyBeforeSignIn(J)V

    goto :goto_0
.end method

.method public removeSignInAllowedObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInAllowedObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public removeSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInStateObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public signIn(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    if-nez p1, :cond_1

    .line 330
    const-string/jumbo v0, "SigninManager"

    const-string/jumbo v1, "Ignoring sign-in request due to null account."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;->onSignInAborted()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    if-eqz v0, :cond_2

    .line 336
    const-string/jumbo v0, "SigninManager"

    const-string/jumbo v1, "Ignoring sign-in request as another sign-in request is pending."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;->onSignInAborted()V

    goto :goto_0

    .line 341
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mFirstRunCheckIsPending:Z

    if-eqz v0, :cond_3

    .line 342
    const-string/jumbo v0, "SigninManager"

    const-string/jumbo v1, "Ignoring sign-in request until the First Run check completes."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;->onSignInAborted()V

    goto :goto_0

    .line 347
    :cond_3
    new-instance v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;-><init>(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInState:Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;

    .line 348
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->notifySignInAllowedChanged()V

    .line 350
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->progressSignInFlowSeedSystemAccounts()V

    goto :goto_0
.end method

.method public signIn(Ljava/lang/String;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/signin/SigninManager$2;

    invoke-direct {v1, p0, p2, p3}, Lorg/chromium/chrome/browser/signin/SigninManager$2;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAccountFromName(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    .line 364
    return-void
.end method

.method public signOut()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, v0, v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut(Ljava/lang/Runnable;Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V

    .line 500
    return-void
.end method

.method public signOut(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut(Ljava/lang/Runnable;Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V

    .line 507
    return-void
.end method

.method public signOut(Ljava/lang/Runnable;Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 519
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mSignOutCallback:Ljava/lang/Runnable;

    .line 521
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->getManagementDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 522
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Signing out, wipe data? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 526
    iget-wide v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mNativeSigninManagerAndroid:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/signin/SigninManager;->nativeSignOut(J)V

    .line 527
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/sync/signin/ChromeSigninController;->setSignedInAccountName(Ljava/lang/String;)V

    .line 529
    if-eqz v0, :cond_1

    .line 530
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/signin/SigninManager;->wipeProfileData(Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;)V

    .line 535
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->invalidateAccountSeedStatus(Z)V

    .line 536
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 532
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->onSignOutDone()V

    goto :goto_1
.end method
