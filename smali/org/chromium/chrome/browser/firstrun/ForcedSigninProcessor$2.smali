.class final Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;
.super Ljava/lang/Object;
.source "ForcedSigninProcessor.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$signinManager:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;->val$signinManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public final onResult([Landroid/accounts/Account;)V
    .locals 4

    .prologue
    .line 75
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 76
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;->val$signinManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2$1;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2$1;-><init>(Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    goto :goto_0
.end method
