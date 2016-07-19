.class public Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;
.super Ljava/lang/Object;
.source "CardUnmaskPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCardUnmaskInput:Landroid/widget/EditText;

.field private final mControlsContainer:Landroid/view/ViewGroup;

.field private final mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

.field private final mDialog:Landroid/support/v7/app/AlertDialog;

.field private final mErrorMessage:Landroid/widget/TextView;

.field private final mExpirationContainer:Landroid/view/View;

.field private final mInstructions:Landroid/widget/TextView;

.field private final mMainView:Landroid/view/View;

.field private final mMonthInput:Landroid/widget/EditText;

.field private final mNewCardLink:Landroid/widget/TextView;

.field private final mNoRetryErrorMessage:Landroid/widget/TextView;

.field private mShouldRequestExpirationDate:Z

.field private final mStoreLocallyCheckbox:Landroid/widget/CheckBox;

.field private final mStoreLocallyTooltipIcon:Landroid/widget/ImageView;

.field private mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

.field private final mThisYear:I

.field private final mVerificationOverlay:Landroid/view/View;

.field private final mVerificationProgressBar:Landroid/widget/ProgressBar;

.field private final mVerificationView:Landroid/widget/TextView;

.field private final mYearInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    sget v2, Lorg/chromium/chrome/R$layout;->autofill_card_unmask_prompt:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 107
    sget v0, Lorg/chromium/chrome/R$id;->instructions:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mInstructions:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iput-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMainView:Landroid/view/View;

    .line 111
    sget v0, Lorg/chromium/chrome/R$id;->no_retry_error_message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNoRetryErrorMessage:Landroid/widget/TextView;

    .line 112
    sget v0, Lorg/chromium/chrome/R$id;->card_unmask_input:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    .line 113
    sget v0, Lorg/chromium/chrome/R$id;->expiration_month:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    .line 114
    sget v0, Lorg/chromium/chrome/R$id;->expiration_year:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mYearInput:Landroid/widget/EditText;

    .line 115
    sget v0, Lorg/chromium/chrome/R$id;->expiration_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mExpirationContainer:Landroid/view/View;

    .line 116
    sget v0, Lorg/chromium/chrome/R$id;->new_card_link:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNewCardLink:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNewCardLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v0, Lorg/chromium/chrome/R$id;->error_message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mErrorMessage:Landroid/widget/TextView;

    .line 119
    sget v0, Lorg/chromium/chrome/R$id;->store_locally_checkbox:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    .line 120
    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    sget v0, Lorg/chromium/chrome/R$id;->store_locally_tooltip_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipIcon:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    if-nez p7, :cond_0

    sget v0, Lorg/chromium/chrome/R$id;->store_locally_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->controls_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mControlsContainer:Landroid/view/ViewGroup;

    .line 125
    sget v0, Lorg/chromium/chrome/R$id;->verification_overlay:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationOverlay:Landroid/view/View;

    .line 126
    sget v0, Lorg/chromium/chrome/R$id;->verification_progress_bar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationProgressBar:Landroid/widget/ProgressBar;

    .line 127
    sget v0, Lorg/chromium/chrome/R$id;->verification_message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationView:Landroid/widget/TextView;

    .line 128
    sget v0, Lorg/chromium/chrome/R$id;->cvc_hint_image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, p1, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->autofill_card_unmask_confirm_button:I

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    iput-boolean p6, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mThisYear:I

    .line 140
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->getFourDigitYear()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInitialFocus()V

    return-void
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private areInputsValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    if-eqz v1, :cond_2

    .line 324
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 325
    if-lez v1, :cond_0

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->getFourDigitYear()I

    move-result v1

    .line 331
    iget v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mThisYear:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mThisYear:I

    add-int/lit8 v2, v2, 0xa

    if-gt v1, v2, :cond_0

    .line 333
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;->checkUserInputValidity(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getFourDigitYear()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 428
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    if-gez v0, :cond_1

    move v0, v1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mThisYear:I

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mThisYear:I

    rem-int/lit8 v1, v3, 0x64
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private onNewCardLinkClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;->onNewCardLinkClicked()V

    .line 306
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNewCardLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInputError(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 311
    return-void
.end method

.method private onTooltipIconClicked()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    .line 263
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 264
    sget v0, Lorg/chromium/chrome/R$string;->autofill_card_unmask_prompt_storage_tooltip:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->l(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/view/C;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/view/C;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 273
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    sget v2, Lorg/chromium/chrome/R$dimen;->autofill_card_unmask_tooltip_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 277
    sget v3, Lorg/chromium/chrome/R$dimen;->autofill_card_unmask_tooltip_vertical_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 279
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 281
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 282
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 283
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 284
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 285
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    sget v3, Lorg/chromium/chrome/R$drawable;->store_locally_tooltip_background:I

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    new-instance v2, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 301
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setInitialFocus()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 316
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    .line 317
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 318
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 319
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private setInputError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mErrorMessage:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 401
    :goto_1
    return-void

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_2
    const/4 v0, 0x0

    .line 390
    if-eqz p1, :cond_3

    .line 391
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->input_underline_error_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 398
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V

    .line 399
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V

    .line 400
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mYearInput:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private setInputsEnabled(Z)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    return-void
.end method

.method private setNoRetryError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNoRetryErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNoRetryErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNoRetryErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 410
    return-void
.end method

.method private setOverlayVisibility(I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 354
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationOverlay:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mControlsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 356
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    .line 357
    :goto_0
    if-nez v1, :cond_0

    .line 359
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationOverlay:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 360
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 361
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mControlsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 363
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mControlsContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 366
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mControlsContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    const/high16 v0, 0x20000

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 369
    return-void

    :cond_1
    move v1, v0

    .line 356
    goto :goto_0

    .line 363
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 366
    :cond_3
    const/high16 v0, 0x60000

    goto :goto_2
.end method

.method private showExpirationDateInputsInputs()V
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mExpirationContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mExpirationContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEms(I)V

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 419
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->areInputsValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public disableAndWaitForVerification()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInputsEnabled(Z)V

    .line 184
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setOverlayVisibility(I)V

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationView:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->autofill_card_unmask_verification_in_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInputError(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 238
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->onTooltipIconClicked()V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNewCardLink:Landroid/widget/TextView;

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 241
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->onNewCardLinkClicked()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDelegate:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;->dismissed()V

    .line 222
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 145
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->showExpirationDateInputsInputs()V

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    new-instance v1, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$1;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mCardUnmaskInput:Landroid/widget/EditText;

    new-instance v1, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$2;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    .line 175
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->showExpirationDateInputsInputs()V

    .line 176
    return-void
.end method

.method public verificationFinished(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_2

    .line 193
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setOverlayVisibility(I)V

    .line 194
    if-eqz p2, :cond_1

    .line 195
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInputError(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInputsEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInitialFocus()V

    .line 199
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mShouldRequestExpirationDate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mNewCardLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setInputError(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->setNoRetryError(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    sget v1, Lorg/chromium/chrome/R$id;->verification_success:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mVerificationView:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->autofill_card_unmask_verification_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 210
    new-instance v1, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$3;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
