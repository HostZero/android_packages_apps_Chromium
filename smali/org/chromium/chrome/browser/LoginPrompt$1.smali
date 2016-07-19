.class Lorg/chromium/chrome/browser/LoginPrompt$1;
.super Ljava/lang/Object;
.source "LoginPrompt.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/LoginPrompt;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/LoginPrompt;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/LoginPrompt$1;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt$1;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    # getter for: Lorg/chromium/chrome/browser/LoginPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/LoginPrompt;->access$000(Lorg/chromium/chrome/browser/LoginPrompt;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
