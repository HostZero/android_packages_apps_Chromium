.class Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;
.super Ljava/lang/Object;
.source "ExternalNavigationDelegateImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$needsToCloseTab:Z

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-boolean p4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$needsToCloseTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->startActivity(Landroid/content/Intent;)V

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$needsToCloseTab:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    # invokes: Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->access$100(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 320
    :cond_0
    return-void
.end method
