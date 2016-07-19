.class Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;
.super Ljava/lang/Object;
.source "AccountManagementFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 284
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 298
    :cond_1
    :goto_0
    return v0

    .line 286
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$100(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 290
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->getInstance()Lorg/chromium/chrome/browser/signin/AccountAdder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/signin/AccountAdder;->addAccount(Landroid/app/Activity;I)V

    .line 294
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->mGaiaServiceType:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$100(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
