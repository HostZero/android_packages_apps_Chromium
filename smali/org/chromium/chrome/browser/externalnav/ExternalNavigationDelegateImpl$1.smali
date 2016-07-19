.class Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;
.super Ljava/lang/Object;
.source "ExternalNavigationDelegateImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

.field final synthetic val$fallbackUrl:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$needsToCloseTab:Z

.field final synthetic val$referrerUrl:Ljava/lang/String;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$referrerUrl:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$fallbackUrl:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iput-boolean p6, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$needsToCloseTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 7

    .prologue
    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->this$0:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$referrerUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$fallbackUrl:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl$1;->val$needsToCloseTab:Z

    const/4 v6, 0x1

    # invokes: Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->loadIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->access$000(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    .line 332
    return-void
.end method
