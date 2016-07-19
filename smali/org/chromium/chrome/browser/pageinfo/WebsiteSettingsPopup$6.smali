.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    const/16 v1, 0x9

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->recordAction(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$800(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;I)V

    .line 724
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$900(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->createFragmentArgsForSite(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 726
    const-string/jumbo v1, "org.chromium.chrome.preferences.web_contents"

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$1000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 728
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 730
    const-string/jumbo v2, "show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 732
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 733
    return-void
.end method
