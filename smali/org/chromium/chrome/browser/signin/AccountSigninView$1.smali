.class Lorg/chromium/chrome/browser/signin/AccountSigninView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccountSigninView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$300(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$300(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_signin_account_spinner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
