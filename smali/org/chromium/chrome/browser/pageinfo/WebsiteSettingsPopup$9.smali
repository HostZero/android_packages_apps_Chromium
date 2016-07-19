.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

.field final synthetic val$intentOverride:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    iput-object p2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;->val$intentOverride:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;->val$intentOverride:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;->val$intentOverride:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 781
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 782
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 783
    return-void

    .line 778
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
