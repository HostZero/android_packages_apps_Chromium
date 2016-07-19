.class Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2$1;
.super Ljava/lang/Object;
.source "ForcedSigninProcessor.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2$1;->this$0:Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignInAborted()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onSignInComplete()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2$1;->this$0:Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$2;->val$appContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->setSignOutAllowedPreferenceValue(Landroid/content/Context;Z)V

    .line 85
    return-void
.end method
