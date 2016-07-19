.class Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;
.super Ljava/lang/Object;
.source "AccountManagementFragment.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$WipeDataHooks;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$clearDataProgressDialog:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;Landroid/app/DialogFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->val$clearDataProgressDialog:Landroid/app/DialogFragment;

    iput-object p3, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postWipeData()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->val$clearDataProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->val$clearDataProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 460
    :cond_0
    return-void
.end method

.method public preWipeData()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->val$clearDataProgressDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "clear_data_progress"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 454
    return-void
.end method
