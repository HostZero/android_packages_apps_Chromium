.class public Lorg/chromium/chrome/browser/preferences/SpinnerPreference;
.super Landroid/preference/Preference;
.source "SpinnerPreference.java"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mSelectedIndex:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget v0, Lorg/chromium/chrome/R$layout;->preference_spinner:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->setLayoutResource(I)V

    .line 34
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/preferences/SpinnerPreference;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSelectedIndex:I

    return p1
.end method


# virtual methods
.method public getSelectedOption()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mView:Landroid/view/View;

    .line 81
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/SpinnerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public setOptions([Ljava/lang/Object;I)V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 46
    iput p2, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSelectedIndex:I

    .line 47
    return-void
.end method
