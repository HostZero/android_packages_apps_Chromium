.class public Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PassphraseCreationDialogFragment.java"


# instance fields
.field private mConfirmPassphrase:Landroid/widget/EditText;

.field private mEnterPassphrase:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->tryToSubmitPassphrase()V

    return-void
.end method

.method private getInstructionsText()Landroid/text/SpannableString;
    .locals 8

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    sget v1, Lorg/chromium/chrome/R$string;->sync_custom_passphrase:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v3, 0x0

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<learnmore>"

    const-string/jumbo v6, "</learnmore>"

    new-instance v7, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;

    invoke-direct {v7, p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;Landroid/app/Activity;)V

    invoke-direct {v4, v5, v6, v7}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private tryToSubmitPassphrase()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mEnterPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mConfirmPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mConfirmPassphrase:Landroid/widget/EditText;

    sget v1, Lorg/chromium/chrome/R$string;->sync_passphrase_cannot_be_blank:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mConfirmPassphrase:Landroid/widget/EditText;

    sget v1, Lorg/chromium/chrome/R$string;->sync_passphrases_do_not_match:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$Listener;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$Listener;->onPassphraseCreated(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget v1, Lorg/chromium/chrome/R$layout;->sync_custom_passphrase:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    sget v0, Lorg/chromium/chrome/R$id;->passphrase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mEnterPassphrase:Landroid/widget/EditText;

    .line 46
    sget v0, Lorg/chromium/chrome/R$id;->confirm_passphrase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mConfirmPassphrase:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->mConfirmPassphrase:Landroid/widget/EditText;

    new-instance v2, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 58
    sget v0, Lorg/chromium/chrome/R$id;->custom_passphrase_instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getInstructionsText()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->sync_passphrase_type_custom_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->save:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/E;->a(Z)V

    .line 70
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 90
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    .line 94
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$3;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method
