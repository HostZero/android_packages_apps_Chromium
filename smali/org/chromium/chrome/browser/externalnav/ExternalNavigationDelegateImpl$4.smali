.class Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;
.super Ljava/lang/Object;
.source "ExternalNavigationDelegateImpl.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$needsToCloseTab:Z

.field final synthetic val$referrerUrl:Ljava/lang/String;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$referrerUrl:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-boolean p5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$needsToCloseTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 7

    .prologue
    .line 358
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p2, v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$referrerUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$needsToCloseTab:Z

    iget-object v6, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v6

    # invokes: Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->loadIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->access$000(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$needsToCloseTab:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$4;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    # invokes: Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->access$100(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method
