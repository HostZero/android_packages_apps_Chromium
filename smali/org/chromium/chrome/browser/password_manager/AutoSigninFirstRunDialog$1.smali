.class Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "AutoSigninFirstRunDialog.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->access$000(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->nativeOnLinkClicked(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->access$100(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;J)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->access$200(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 88
    return-void
.end method
