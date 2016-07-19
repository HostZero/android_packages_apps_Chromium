.class Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$1;
.super Landroid/text/style/ClickableSpan;
.source "PasswordGenerationAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;

    # getter for: Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mDelegate:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->access$000(Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;)Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;->onSavedPasswordsLinkClicked()V

    .line 151
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;

    # getter for: Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->access$100(Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->password_generation_link_text_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 159
    return-void
.end method
