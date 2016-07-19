.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;
.super Ljava/lang/Object;
.source "CustomTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 631
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 632
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 634
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$7;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CustomTabActivity"

    const-string/jumbo v1, "CanceledException while sending pending intent."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
