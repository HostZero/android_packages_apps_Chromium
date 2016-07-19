.class Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;
.super Ljava/lang/Object;
.source "RecentTabsPromoView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelected(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 275
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Settings should be hidden in RecentTabsPromoView."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;->onAccountSelectionConfirmed()V

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Ljava/lang/String;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    .line 279
    return-void
.end method

.method public onAccountSelectionCanceled()V
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;->onAccountSelectionCancelled()V

    .line 264
    return-void
.end method

.method public onFailedToSetForcedAccount(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No forced accounts in SignInPromoView"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method public onNewAccount()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;->onNewAccount()V

    .line 270
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->getInstance()Lorg/chromium/chrome/browser/signin/AccountAdder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountAdder;->addAccount(Landroid/app/Activity;I)V

    .line 271
    return-void
.end method
