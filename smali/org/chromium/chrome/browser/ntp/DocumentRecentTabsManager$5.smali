.class Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;
.super Ljava/lang/Object;
.source "DocumentRecentTabsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;I)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    iput p2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;->val$tabId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;->val$tabId:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->createBringTabToFrontIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 210
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$000(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
