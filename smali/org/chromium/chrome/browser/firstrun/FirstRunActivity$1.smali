.class Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;
.super Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;
.source "FirstRunActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    invoke-direct {p0, p2, p3}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onFlowIsKnown(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->completeFirstRunExperience()V

    .line 170
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # setter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$002(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;
    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$000(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ShowWelcome"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mShowWelcomePage:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$102(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Z)Z

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # invokes: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->createPageSequence()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$200(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)V

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$300(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;
    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$000(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ForceSigninAccountTo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mResultSignInAccountName:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$302(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$400(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->completeFirstRunExperience()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    new-instance v1, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPages:Ljava/util/List;
    invoke-static {v3}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$400(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mFreProperties:Landroid/os/Bundle;
    invoke-static {v4}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$000(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;Landroid/os/Bundle;)V

    # setter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$502(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;)Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # invokes: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->stopProgressionIfNotAcceptedTermsOfService()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$600(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$700(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # getter for: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->mPagerAdapter:Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;
    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$500(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/U;)V

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;

    # invokes: Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->skipPagesIfNecessary()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;->access$800(Lorg/chromium/chrome/browser/firstrun/FirstRunActivity;)V

    goto/16 :goto_0
.end method
