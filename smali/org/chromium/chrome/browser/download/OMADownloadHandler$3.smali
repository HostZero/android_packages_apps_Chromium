.class Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;
.super Ljava/lang/Object;
.source "OMADownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$nextUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->val$nextUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 448
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->val$nextUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    const-string/jumbo v1, "com.android.browser.application_id"

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string/jumbo v1, "create_new_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    # getter for: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$000(Lorg/chromium/chrome/browser/download/OMADownloadHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 455
    :cond_0
    return-void
.end method
