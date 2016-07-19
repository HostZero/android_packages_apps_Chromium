.class Lorg/chromium/chrome/browser/RepostFormWarningDialog$3;
.super Ljava/lang/Object;
.source "RepostFormWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog$3;->this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog$3;->this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    # getter for: Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->access$000(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog$3;->this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    # getter for: Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->access$000(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->continuePendingReload()V

    goto :goto_0
.end method
