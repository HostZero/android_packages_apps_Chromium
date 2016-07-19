.class public Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;
.super Landroid/widget/RelativeLayout;
.source "RadioButtonWithDescription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mGroup:Ljava/util/List;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->radio_button_with_description:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v0, Lorg/chromium/chrome/R$id;->radio_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mRadioButton:Landroid/widget/RadioButton;

    .line 39
    sget v0, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mTitle:Landroid/widget/TextView;

    .line 40
    sget v0, Lorg/chromium/chrome/R$id;->description:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mDescription:Landroid/widget/TextView;

    .line 42
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 46
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method private applyAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/R$styleable;->RadioButtonWithDescription:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    sget v1, Lorg/chromium/chrome/R$styleable;->RadioButtonWithDescription_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mGroup:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setChecked(Z)V

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setChecked(Z)V

    .line 68
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    return-void
.end method

.method public setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setRadioButtonGroup(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->mGroup:Ljava/util/List;

    .line 105
    return-void
.end method
