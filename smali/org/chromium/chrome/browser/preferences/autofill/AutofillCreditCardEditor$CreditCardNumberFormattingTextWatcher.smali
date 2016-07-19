.class Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "AutofillCreditCardEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormattingEnabled:Z

.field private mSelfChange:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mSelfChange:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$1;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;-><init>()V

    return-void
.end method

.method public static hasDashOrSpace(Ljava/lang/CharSequence;II)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 337
    const-string/jumbo v0, " "

    add-int v1, p1, p2

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "-"

    add-int v1, p1, p2

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertSeparators(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 327
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 328
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget v2, v1, v0

    .line 329
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 330
    const-string/jumbo v3, " "

    invoke-interface {p0, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 328
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    return-void

    .line 327
    nop

    :array_0
    .array-data 4
        0x4
        0x9
        0xe
    .end array-data
.end method

.method public static removeSeparators(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 319
    const-string/jumbo v0, " "

    invoke-static {p0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 320
    :goto_0
    if-ltz v0, :cond_0

    .line 321
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 322
    const-string/jumbo v1, " "

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mSelfChange:Z

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 300
    :cond_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mSelfChange:Z

    .line 302
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->removeSeparators(Landroid/text/Editable;)V

    .line 306
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    .line 307
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    .line 313
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    .line 315
    :cond_2
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mSelfChange:Z

    goto :goto_0

    .line 309
    :cond_3
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->insertSeparators(Landroid/text/Editable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    if-lez p3, :cond_0

    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->hasDashOrSpace(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-lez p4, :cond_0

    invoke-static {p1, p2, p4}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->hasDashOrSpace(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillCreditCardEditor$CreditCardNumberFormattingTextWatcher;->mFormattingEnabled:Z

    goto :goto_0
.end method
