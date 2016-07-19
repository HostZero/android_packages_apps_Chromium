.class public Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;
.super Landroid/app/DialogFragment;
.source "PassphraseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mPasswordEditTextOriginalColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->handleSubmit()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->recordPassphraseDialogDismissal(I)V

    return-void
.end method

.method private getListener()Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 234
    instance-of v1, v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;

    if-eqz v1, :cond_0

    .line 235
    check-cast v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;

    goto :goto_0
.end method

.method private getPromptText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 152
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getCurrentSignedInAccountText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPassphraseType()Lorg/chromium/sync/PassphraseType;

    move-result-object v2

    .line 155
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->hasExplicitPassphraseTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    sget-object v3, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$5;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    invoke-virtual {v2}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 164
    const-string/jumbo v3, "Sync_UI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Found incorrect passphrase type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ". Falling back to default string."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getSyncEnterCustomPassphraseBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getSyncEnterGooglePassphraseBodyWithDateText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getSyncEnterCustomPassphraseBodyWithDateText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getSyncEnterCustomPassphraseBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getResetText()Landroid/text/SpannableString;
    .locals 8

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    sget v1, Lorg/chromium/chrome/R$string;->sync_passphrase_reset_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v3, 0x0

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<resetlink>"

    const-string/jumbo v6, "</resetlink>"

    new-instance v7, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;

    invoke-direct {v7, p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;Landroid/content/Context;)V

    invoke-direct {v4, v5, v6, v7}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private handleCancel()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->isIncorrectPassphraseVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 206
    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->recordPassphraseDialogDismissal(I)V

    .line 207
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getListener()Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;->onPassphraseCanceled()V

    .line 208
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private handleSubmit()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->verifying:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    sget v1, Lorg/chromium/chrome/R$string;->sync_verifying:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->passphrase:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 215
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->mPasswordEditTextOriginalColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->mPasswordEditTextOriginalColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getListener()Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$Listener;->onPassphraseEntered(Ljava/lang/String;)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->recordPassphraseDialogDismissal(I)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->invalidPassphrase()V

    goto :goto_0
.end method

.method private invalidPassphrase()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->input_underline_error_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    .line 246
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$id;->verifying:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    sget v2, Lorg/chromium/chrome/R$string;->sync_passphrase_incorrect:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$id;->passphrase:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 251
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 253
    return-void
.end method

.method private isIncorrectPassphraseVisible()Z
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->verifying:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->sync_passphrase_incorrect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Landroid/app/Fragment;)Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;
    .locals 2

    .prologue
    .line 73
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;-><init>()V

    .line 75
    if-eqz p0, :cond_1

    .line 76
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 78
    :cond_1
    return-object v0
.end method

.method private recordPassphraseDialogDismissal(I)V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "Sync.PassphraseDialogDismissed"

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 86
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->handleCancel()V

    .line 149
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    sget v1, Lorg/chromium/chrome/R$layout;->sync_enter_passphrase:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    sget v0, Lorg/chromium/chrome/R$id;->prompt_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getPromptText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget v0, Lorg/chromium/chrome/R$id;->reset_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getResetText()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    sget v0, Lorg/chromium/chrome/R$id;->passphrase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 102
    sget v2, Lorg/chromium/chrome/R$string;->sync_enter_custom_passphrase_hint:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 103
    new-instance v2, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->mPasswordEditTextOriginalColorFilter:Landroid/graphics/ColorFilter;

    .line 115
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->submit:I

    new-instance v2, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$2;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->sign_in_google_account:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/E;->a(Z)V

    .line 129
    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 141
    return-object v0
.end method
