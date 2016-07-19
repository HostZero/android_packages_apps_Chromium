.class public final Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;
.super Ljava/lang/Object;
.source "ForcedSigninProcessor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;->processForcedSignIn(Landroid/content/Context;)V

    return-void
.end method

.method private static processForcedSignIn(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->onFirstRunCheckDone()V

    .line 68
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->canAllowSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;

    invoke-direct {v2, v0, p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts(Lorg/chromium/base/Callback;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->start(Landroid/content/Context;)V

    goto :goto_0
.end method
