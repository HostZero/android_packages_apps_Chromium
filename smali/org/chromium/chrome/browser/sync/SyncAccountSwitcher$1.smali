.class Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;
.super Ljava/lang/Object;
.source "SyncAccountSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;->this$0:Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;->val$callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;->this$0:Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

    # getter for: Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->access$100(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;->this$0:Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

    # getter for: Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mNewAccountName:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->access$000(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;->this$0:Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;

    # getter for: Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;->access$100(Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/SyncAccountSwitcher$1;->val$callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Ljava/lang/String;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    .line 76
    return-void
.end method
