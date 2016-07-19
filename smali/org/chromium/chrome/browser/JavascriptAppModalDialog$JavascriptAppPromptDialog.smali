.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;
.super Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.source "JavascriptAppModalDialog.java"


# instance fields
.field private final mDefaultPromptText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 187
    sget v3, Lorg/chromium/chrome/R$string;->ok:I

    sget v4, Lorg/chromium/chrome/R$string;->cancel:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLorg/chromium/chrome/browser/JavascriptAppModalDialog$1;)V

    .line 188
    iput-object p4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method protected prepare(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->prepare(Landroid/view/ViewGroup;)V

    .line 194
    sget v0, Lorg/chromium/chrome/R$id;->js_modal_dialog_prompt:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 201
    :cond_0
    return-void
.end method
