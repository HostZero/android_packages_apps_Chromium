.class public Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceCategoryWithButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget v0, Lorg/chromium/chrome/R$layout;->preference_category:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->setLayoutResource(I)V

    .line 30
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->setSelectable(Z)V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010273

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->mContentDescription:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onBindView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->mContentDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/Preferences;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/PreferenceCategoryWithButton;->getFragment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/Preferences;->startFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
