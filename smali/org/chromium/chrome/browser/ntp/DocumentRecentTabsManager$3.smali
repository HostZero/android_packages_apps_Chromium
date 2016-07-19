.class Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;
.super Ljava/lang/Object;
.source "DocumentRecentTabsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

.field final synthetic val$session:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->val$session:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->val$tab:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->val$session:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->val$tab:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    const/4 v3, 0x4

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openForeignSessionTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$201(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
