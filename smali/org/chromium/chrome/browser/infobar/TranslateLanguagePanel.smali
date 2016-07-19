.class public Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;
.super Ljava/lang/Object;
.source "TranslateLanguagePanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;


# instance fields
.field private final mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

.field private final mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

.field private final mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

.field private mSourceAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

.field private mSourceSpinner:Landroid/widget/Spinner;

.field private mTargetAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

.field private mTargetSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/SubPanelListener;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    .line 54
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    .line 56
    return-void
.end method

.method private createSpinnerLanguages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->allLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    .line 179
    iget-object v3, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    new-instance v3, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;

    iget-object v4, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    return-object v1
.end method

.method private getSelectionPosition(I)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 125
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 132
    :goto_0
    if-nez p1, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 139
    :goto_1
    const/4 v0, 0x0

    move v3, v2

    move v4, v2

    move v2, v0

    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->allLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->allLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v2

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->allLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    .line 146
    :cond_1
    if-ltz v3, :cond_5

    if-ltz v4, :cond_5

    move v0, v4

    .line 148
    :goto_3
    if-ge v3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 150
    :cond_2
    return v0

    .line 125
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 139
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_3
.end method

.method private reloadSpinners()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->clear()V

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->clear()V

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->createSpinnerLanguages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->createSpinnerLanguages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->getSelectionPosition(I)I

    move-result v1

    .line 113
    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 118
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->getSelectionPosition(I)I

    move-result v1

    .line 119
    if-eq v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 122
    :cond_1
    return-void
.end method

.method private setUpSpinners(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addControlLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    sget v2, Lorg/chromium/chrome/R$string;->translate_options_source_hint:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    .line 87
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    sget v2, Lorg/chromium/chrome/R$string;->translate_options_target_hint:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    .line 90
    sget v1, Lorg/chromium/chrome/R$id;->translate_infobar_source_spinner:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addSpinner(ILandroid/widget/ArrayAdapter;)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceSpinner:Landroid/widget/Spinner;

    .line 92
    sget v1, Lorg/chromium/chrome/R$id;->translate_infobar_target_spinner:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addSpinner(ILandroid/widget/ArrayAdapter;)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetSpinner:Landroid/widget/Spinner;

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->reloadSpinners()V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceAdapter:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->computeMinWidthRequiredForValues()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->setMinWidthRequiredForValues(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public createContent(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceSpinner:Landroid/widget/Spinner;

    .line 61
    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetSpinner:Landroid/widget/Spinner;

    .line 63
    sget v0, Lorg/chromium/chrome/R$string;->translate_infobar_change_languages:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->setUpSpinners(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    .line 69
    sget v0, Lorg/chromium/chrome/R$string;->translate_button_done:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->setSourceLanguage(Ljava/lang/String;)Z

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->setTargetLanguage(Ljava/lang/String;)Z

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/SubPanelListener;->onPanelClosed(I)V

    .line 80
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 155
    check-cast p1, Landroid/widget/Spinner;

    .line 156
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSourceSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->setSourceLanguage(Ljava/lang/String;)Z

    .line 159
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->reloadSpinners()V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mTargetSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->mSessionOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->setTargetLanguage(Ljava/lang/String;)Z

    .line 163
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;->reloadSpinners()V

    .line 165
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method
