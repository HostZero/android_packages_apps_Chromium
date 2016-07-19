.class Lorg/chromium/chrome/browser/signin/SigninPromoScreen$1;
.super Ljava/lang/Object;
.source "SigninPromoScreen.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/SigninPromoScreen;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninPromoScreen;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninPromoScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignInAborted()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->recordAction(I)V

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninPromoScreen;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->dismiss()V

    .line 140
    return-void
.end method

.method public onSignInComplete()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninPromoScreen$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninPromoScreen;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->logInSignedInUser()V

    .line 133
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->recordAction(I)V

    .line 134
    return-void
.end method
