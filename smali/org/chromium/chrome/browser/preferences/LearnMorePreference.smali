.class public Lorg/chromium/chrome/browser/preferences/LearnMorePreference;
.super Landroid/preference/Preference;
.source "LearnMorePreference.java"


# instance fields
.field private final mHelpContext:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v0, Lorg/chromium/chrome/R$styleable;->LearnMorePreference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    sget v1, Lorg/chromium/chrome/R$styleable;->LearnMorePreference_helpContext:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->mHelpContext:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    sget v0, Lorg/chromium/chrome/R$string;->learn_more:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->setTitle(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 46
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 49
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->setSelectable(Z)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v1, v1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    new-instance v1, Lorg/chromium/chrome/browser/preferences/LearnMorePreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/LearnMorePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->mHelpContext:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 41
    return-void
.end method
