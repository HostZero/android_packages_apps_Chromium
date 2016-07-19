.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;
.super Ljava/lang/Object;
.source "CustomTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->isOpenedByChrome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->isHerbResultNeeded()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$200(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    const/4 v1, 0x3

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->createHerbResultIntent(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$300(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;I)V

    .line 282
    :cond_0
    const-string/jumbo v0, "CustomTabs.CloseButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$2;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->finish()V

    .line 284
    return-void
.end method
