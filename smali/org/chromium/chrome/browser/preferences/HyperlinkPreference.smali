.class public Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;
.super Landroid/preference/Preference;
.source "HyperlinkPreference.java"


# instance fields
.field private final mImitateWebLink:Z

.field private final mTitleResId:I

.field private final mUrlResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v0, Lorg/chromium/chrome/R$styleable;->HyperlinkPreference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    sget v1, Lorg/chromium/chrome/R$styleable;->HyperlinkPreference_url:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->mUrlResId:I

    .line 32
    sget v1, Lorg/chromium/chrome/R$styleable;->HyperlinkPreference_imitateWebLink:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->mImitateWebLink:Z

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->getTitleRes()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->mTitleResId:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 48
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->mImitateWebLink:Z

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->setSelectable(Z)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v1, v1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    new-instance v1, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->mTitleResId:I

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->mUrlResId:I

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;II)V

    .line 40
    return-void
.end method
