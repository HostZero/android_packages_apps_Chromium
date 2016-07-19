.class Lorg/chromium/chrome/browser/signin/SigninHelper$3;
.super Ljava/lang/Object;
.source "SigninHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninHelper;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$3;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignInAborted()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onSignInComplete()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$3;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    # getter for: Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->access$300(Lorg/chromium/chrome/browser/signin/SigninHelper;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$3;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    # getter for: Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->access$300(Lorg/chromium/chrome/browser/signin/SigninHelper;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setSetupInProgress(Z)V

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$3;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->validateAccountSettings(Z)V

    .line 264
    return-void
.end method
