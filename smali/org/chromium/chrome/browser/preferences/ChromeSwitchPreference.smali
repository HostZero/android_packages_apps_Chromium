.class public Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "ChromeSwitchPreference.java"


# instance fields
.field private mDontUseSummaryAsTitle:Z

.field private mDrawDivider:Z

.field private mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget v0, Lorg/chromium/chrome/R$layout;->preference_switch:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setWidgetLayoutResource(I)V

    .line 40
    sget-object v0, Lorg/chromium/chrome/R$styleable;->ChromeSwitchPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget v1, Lorg/chromium/chrome/R$styleable;->ChromeSwitchPreference_dontUseSummaryAsTitle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mDontUseSummaryAsTitle:Z

    .line 43
    sget v1, Lorg/chromium/chrome/R$styleable;->ChromeSwitchPreference_drawDivider:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mDrawDivider:Z

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 69
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mDrawDivider:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;->create(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->switch_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 82
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 86
    :cond_1
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mDontUseSummaryAsTitle:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->onBindViewToPreference(Landroid/preference/Preference;Landroid/view/View;)V

    .line 96
    :cond_3
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->onClickPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method

.method public setDrawDivider(Z)V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mDrawDivider:Z

    if-eq v0, p1, :cond_0

    .line 60
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mDrawDivider:Z

    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->notifyChanged()V

    .line 63
    :cond_0
    return-void
.end method

.method public setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->mManagedPrefDelegate:Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->initPreference(Landroid/preference/Preference;)V

    .line 53
    :cond_0
    return-void
.end method
