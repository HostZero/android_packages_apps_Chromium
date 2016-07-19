.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;
.super Landroid/app/Fragment;
.source "AutofillProfileEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

.field private mAutofillProfileBridge:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

.field private mCountriesSpinner:Landroid/widget/Spinner;

.field private mCountryCodes:Ljava/util/List;

.field private mCurrentCountryPos:I

.field private mEmailLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

.field private mEmailText:Landroid/widget/EditText;

.field private mGUID:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLanguageCodeString:Ljava/lang/String;

.field private mNoCountryItemIsSelected:Z

.field private mPhoneLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

.field private mPhoneText:Landroid/widget/EditText;

.field private mUseSavedProfileLanguage:Z

.field private mWidgetRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->deleteProfile()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->saveProfile()V

    return-void
.end method

.method private allFieldsEmpty()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mPhoneText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 118
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createAndPopulateEditFields()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 157
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfile(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mPhoneLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mEmailLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    .line 169
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    .line 171
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    .line 172
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-ne v1, v3, :cond_2

    .line 174
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    .line 176
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-ne v1, v3, :cond_2

    .line 179
    iput v4, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    .line 183
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-direct {p0, v1, v4}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->resetFormFields(IZ)V

    .line 185
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 186
    const/4 v1, 0x2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 187
    const/4 v1, 0x3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 188
    const/4 v1, 0x4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 189
    const/4 v1, 0x5

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 190
    const/4 v1, 0x6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 191
    const/4 v1, 0x7

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 192
    const/16 v1, 0x8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setFieldText(ILjava/lang/String;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountriesSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 205
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    .line 196
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-ne v0, v3, :cond_4

    .line 199
    iput v4, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    .line 201
    :cond_4
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-direct {p0, v0, v5}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->resetFormFields(IZ)V

    goto :goto_0
.end method

.method private deleteProfile()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method private getFieldText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeSaveCancelDeleteButtons(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    sget v0, Lorg/chromium/chrome/R$id;->autofill_profile_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 300
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 302
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    :goto_0
    sget v0, Lorg/chromium/chrome/R$id;->autofill_profile_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 313
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$2;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget v0, Lorg/chromium/chrome/R$id;->autofill_profile_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 320
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$3;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mPhoneText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mNoCountryItemIsSelected:Z

    .line 334
    return-void

    .line 304
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$1;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private populateCountriesSpinner()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->getSupportedCountries()Ljava/util/List;

    move-result-object v1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;

    .line 147
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mCode:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 152
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 153
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    return-void
.end method

.method private resetFormFields(IZ)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    array-length v0, v0

    new-array v5, v0, [Ljava/lang/String;

    move v0, v3

    .line 211
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 214
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 222
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAutofillProfileBridge:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 225
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAutofillProfileBridge:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->getCurrentBestLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    .line 230
    :cond_2
    const/4 v0, 0x1

    .line 231
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 232
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 233
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lorg/chromium/chrome/R$layout;->preference_address_float_label_layout:I

    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 236
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 238
    sget v2, Lorg/chromium/chrome/R$id;->address_edit_text:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 240
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    const/4 v0, 0x6

    if-ne v7, v0, :cond_3

    .line 244
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 247
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aput-object v1, v0, v7

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    if-eqz v4, :cond_7

    if-eqz p2, :cond_7

    .line 251
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->focusWithoutAnimation()V

    move v0, v3

    :goto_2
    move v4, v0

    .line 254
    goto :goto_1

    .line 257
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    array-length v0, v0

    if-ge v3, v0, :cond_6

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    aget-object v0, v5, v3

    if-eqz v0, :cond_5

    aget-object v0, v5, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v0, v0, v3

    aget-object v1, v5, v3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 263
    :cond_6
    return-void

    :cond_7
    move v0, v4

    goto :goto_2
.end method

.method private saveProfile()V
    .locals 17

    .prologue
    .line 268
    new-instance v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    const-string/jumbo v3, "Chrome settings"

    const/4 v4, 0x1

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getFieldText(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountryCodes:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mPhoneText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mLanguageCodeString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setProfile(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    .line 277
    return-void
.end method

.method private setFieldText(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    return-void
.end method

.method private setSaveButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->autofill_profile_save:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 339
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mGUID:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->autofill_create_profile:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 80
    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAddressFields:[Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lorg/chromium/chrome/R$layout;->autofill_profile_editor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    sget v0, Lorg/chromium/chrome/R$id;->phone_number_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mPhoneText:Landroid/widget/EditText;

    .line 85
    sget v0, Lorg/chromium/chrome/R$id;->phone_number_label:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mPhoneLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 86
    sget v0, Lorg/chromium/chrome/R$id;->email_address_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mEmailText:Landroid/widget/EditText;

    .line 87
    sget v0, Lorg/chromium/chrome/R$id;->email_address_label:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mEmailLabel:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 88
    sget v0, Lorg/chromium/chrome/R$id;->autofill_profile_widget_root:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mWidgetRoot:Landroid/view/ViewGroup;

    .line 89
    sget v0, Lorg/chromium/chrome/R$id;->countries:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCountriesSpinner:Landroid/widget/Spinner;

    .line 91
    new-instance v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mAutofillProfileBridge:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    .line 93
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->populateCountriesSpinner()V

    .line 94
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->createAndPopulateEditFields()V

    .line 95
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->initializeSaveCancelDeleteButtons(Landroid/view/View;)V

    .line 97
    return-object v1

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->autofill_edit_profile:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    if-eq p3, v0, :cond_0

    .line 129
    iput p3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mCurrentCountryPos:I

    .line 130
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mUseSavedProfileLanguage:Z

    .line 133
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->allFieldsEmpty()Z

    move-result v0

    invoke-direct {p0, p3, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->resetFormFields(IZ)V

    .line 134
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mNoCountryItemIsSelected:Z

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setSaveButtonEnabled(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->mNoCountryItemIsSelected:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->allFieldsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 109
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->setSaveButtonEnabled(Z)V

    .line 110
    return-void

    :cond_0
    move v2, v1

    .line 108
    goto :goto_0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_1
.end method
