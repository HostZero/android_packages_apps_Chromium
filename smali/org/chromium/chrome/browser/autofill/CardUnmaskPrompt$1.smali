.class Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;
.super Ljava/lang/Object;
.source "CardUnmaskPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    # getter for: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$400(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    # getter for: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$000(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    # getter for: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$100(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    # invokes: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->getFourDigitYear()I
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$200(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    # getter for: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$300(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    # getter for: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$300(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;->onUserInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
