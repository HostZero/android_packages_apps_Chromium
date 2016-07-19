.class public Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;
.super Landroid/app/DialogFragment;
.source "PassphraseTypeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getIsEncryptEverythingAllowedFromArguments()Z

    move-result v0

    return v0
.end method

.method static create(Lorg/chromium/sync/PassphraseType;JZ)Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;-><init>()V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string/jumbo v2, "arg_current_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const-string/jumbo v2, "arg_passphrase_time"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    const-string/jumbo v2, "arg_is_encrypt_everything_allowed"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 152
    return-object v0
.end method

.method private createAdapter(Lorg/chromium/sync/PassphraseType;)Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/chromium/sync/PassphraseType;->getVisibleTypes()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getDisplayNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;Ljava/util/List;[Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;)V

    return-object v1
.end method

.method private getDisplayNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/PassphraseType;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->textForPassphraseType(Lorg/chromium/sync/PassphraseType;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_0
    return-object v2
.end method

.method private getIsEncryptEverythingAllowedFromArguments()Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arg_is_encrypt_everything_allowed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getPassphraseDateStringFromArguments()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arg_passphrase_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 237
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 238
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResetText()Landroid/text/SpannableString;
    .locals 8

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    sget v1, Lorg/chromium/chrome/R$string;->sync_passphrase_encryption_reset_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v3, 0x0

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<resetlink>"

    const-string/jumbo v6, "</resetlink>"

    new-instance v7, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;

    invoke-direct {v7, p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;Landroid/content/Context;)V

    invoke-direct {v4, v5, v6, v7}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private textForPassphraseType(Lorg/chromium/sync/PassphraseType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    sget-object v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$2;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    invoke-virtual {p1}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget v0, Lorg/chromium/chrome/R$string;->sync_passphrase_type_keystore:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getPassphraseDateStringFromArguments()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget v1, Lorg/chromium/chrome/R$string;->sync_passphrase_type_frozen:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_2
    sget v0, Lorg/chromium/chrome/R$string;->sync_passphrase_type_custom:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCurrentTypeFromArguments()Lorg/chromium/sync/PassphraseType;
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arg_current_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/PassphraseType;

    .line 229
    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to find argument with current type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->dismiss()V

    .line 208
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    sget v1, Lorg/chromium/chrome/R$layout;->sync_passphrase_types:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    sget v0, Lorg/chromium/chrome/R$id;->passphrase_types:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 162
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getCurrentTypeFromArguments()Lorg/chromium/sync/PassphraseType;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->createAdapter(Lorg/chromium/sync/PassphraseType;)Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    sget v3, Lorg/chromium/chrome/R$id;->passphrase_type_list:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setId(I)V

    .line 165
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 167
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getCurrentTypeFromArguments()Lorg/chromium/sync/PassphraseType;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->getPositionForType(Lorg/chromium/sync/PassphraseType;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 172
    sget-object v0, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    if-ne v3, v0, :cond_0

    .line 173
    sget v0, Lorg/chromium/chrome/R$id;->reset_sync_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 176
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getResetText()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->sync_passphrase_type_title:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getCurrentTypeFromArguments()Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    .line 215
    long-to-int v1, p4

    invoke-static {v1}, Lorg/chromium/sync/PassphraseType;->fromInternalValue(I)Lorg/chromium/sync/PassphraseType;

    move-result-object v1

    .line 216
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getIsEncryptEverythingAllowedFromArguments()Z

    move-result v2

    .line 217
    invoke-virtual {v0, v2}, Lorg/chromium/sync/PassphraseType;->getAllowedTypes(Z)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v0}, Lorg/chromium/sync/PassphraseType;->internalValue()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p4, v2

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Listener;

    .line 220
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Listener;->onPassphraseTypeSelected(Lorg/chromium/sync/PassphraseType;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->dismiss()V

    .line 224
    :cond_1
    return-void
.end method
