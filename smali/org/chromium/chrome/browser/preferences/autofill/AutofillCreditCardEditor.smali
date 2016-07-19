.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;
.super Landroid/app/Fragment;
.source "AutofillCreditCardEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mExpirationMonth:Landroid/widget/Spinner;

.field private mExpirationYear:Landroid/widget/Spinner;

.field private mGUID:Ljava/lang/String;

.field private mInitialExpirationMonthPos:I

.field private mInitialExpirationYearPos:I

.field private mNameLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

.field private mNameText:Landroid/widget/EditText;

.field private mNumberLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

.field private mNumberText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 261
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->deleteCreditCard()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->saveCreditCard()V

    return-void
.end method

.method private addCardDataToEditFields()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getCreditCard(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v3

    .line 144
    if-nez v3, :cond_0

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->focusWithoutAnimation()V

    .line 184
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_1
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 160
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationMonth:Landroid/widget/Spinner;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 165
    iput v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mInitialExpirationYearPos:I

    move v0, v2

    .line 167
    :goto_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 168
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mInitialExpirationYearPos:I

    .line 176
    :goto_3
    if-nez v1, :cond_3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 180
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 181
    iput v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mInitialExpirationYearPos:I

    .line 183
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mInitialExpirationYearPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 167
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private deleteCreditCard()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteCreditCard(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method private initializeSaveCancelDeleteButtons(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    sget v0, Lorg/chromium/chrome/R$id;->autofill_credit_card_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 208
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    :goto_0
    sget v0, Lorg/chromium/chrome/R$id;->autofill_credit_card_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 221
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$2;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget v0, Lorg/chromium/chrome/R$id;->autofill_credit_card_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 228
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$3;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationMonth:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 243
    return-void

    .line 212
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$1;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private saveCreditCard()V
    .locals 10

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    const-string/jumbo v2, "Chrome settings"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationMonth:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    .line 198
    return-void
.end method

.method private updateSaveButtonEnabled()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$id;->autofill_credit_card_save:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method addSpinnerAdapters()V
    .locals 8

    .prologue
    const v7, 0x1090009

    const v6, 0x1090008

    const/4 v5, 0x1

    .line 116
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 121
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 122
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "MMMM (MM)"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 124
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v0, v4, :cond_0

    .line 125
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationMonth:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 134
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v0, v1

    .line 135
    :goto_1
    add-int/lit8 v2, v1, 0xa

    if-ge v0, v2, :cond_1

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 58
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lorg/chromium/chrome/R$layout;->autofill_credit_card_editor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    sget v0, Lorg/chromium/chrome/R$id;->credit_card_name_label:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 62
    sget v0, Lorg/chromium/chrome/R$id;->credit_card_name_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNameText:Landroid/widget/EditText;

    .line 63
    sget v0, Lorg/chromium/chrome/R$id;->credit_card_number_label:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 64
    sget v0, Lorg/chromium/chrome/R$id;->credit_card_number_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberText:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mNumberText:Landroid/widget/EditText;

    new-instance v2, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    sget v0, Lorg/chromium/chrome/R$id;->autofill_credit_card_editor_month_spinner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationMonth:Landroid/widget/Spinner;

    .line 71
    sget v0, Lorg/chromium/chrome/R$id;->autofill_credit_card_editor_year_spinner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v2, "guid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mGUID:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->autofill_create_credit_card:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->addSpinnerAdapters()V

    .line 88
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->addCardDataToEditFields()V

    .line 89
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->initializeSaveCancelDeleteButtons(Landroid/view/View;)V

    .line 90
    return-object v1

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->autofill_edit_credit_card:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationYear:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mInitialExpirationYearPos:I

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mExpirationMonth:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->mInitialExpirationMonthPos:I

    if-eq p3, v0, :cond_2

    .line 97
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->updateSaveButtonEnabled()V

    .line 99
    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor;->updateSaveButtonEnabled()V

    .line 113
    return-void
.end method
