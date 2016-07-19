.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;
.super Ljava/lang/Object;
.source "CustomTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

.field final synthetic val$params:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->val$params:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->val$params:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    invoke-static {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->isOpenedByChrome()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    const-string/jumbo v0, "TaskManagement.OpenInChromeActionButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->openCurrentUrlInBrowser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->finish()V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->sendButtonPendingIntentWithUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 584
    const-string/jumbo v0, "CustomTabsCustomActionButtonClick"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0
.end method
