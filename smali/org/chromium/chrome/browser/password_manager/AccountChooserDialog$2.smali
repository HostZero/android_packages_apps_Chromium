.class Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;
.super Landroid/text/style/ClickableSpan;
.source "AccountChooserDialog.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$100(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->nativeOnLinkClicked(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$200(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;J)V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$300(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    return-void
.end method
