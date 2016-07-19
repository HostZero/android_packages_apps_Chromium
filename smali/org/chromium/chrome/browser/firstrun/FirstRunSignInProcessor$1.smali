.class final Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;
.super Ljava/lang/Object;
.source "FirstRunSignInProcessor.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$setUpSync:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;->val$setUpSync:Z

    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignInAborted()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInComplete(Landroid/content/Context;Z)V

    .line 102
    return-void
.end method

.method public final onSignInComplete()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;->val$setUpSync:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;->val$activity:Landroid/app/Activity;

    # invokes: Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->openSyncSettings(Landroid/app/Activity;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->access$000(Landroid/app/Activity;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->setFirstRunFlowSignInComplete(Landroid/content/Context;Z)V

    .line 95
    return-void
.end method
